import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:product_management/components/base_view/base_view_model.dart';
import 'package:product_management/data/models/api/response/form/form.dart'
    as dform;
import 'package:product_management/data/models/api/response/item/item.dart';
import 'package:product_management/data/models/api/response/product_list/product_list.dart';
import 'package:product_management/data/models/api/response/response_data/response_data.dart';
import 'package:product_management/data/models/api/response/response_data_list/response_data_list.dart';
import 'package:product_management/data/repositories/api/response_data/response_data_repository.dart';
import 'package:product_management/screens/product_management/product_management_state.dart';
import 'package:product_management/utilities/constants/app_text_constants.dart';
import 'package:product_management/utilities/extension/string.dart';

class ProductManagementViewModel extends BaseViewModel<ProductManagementState> {
  ProductManagementViewModel({
    required this.responseDataRepository,
  }) : super(const ProductManagementState());

  final ResponseDataRepository responseDataRepository;

  final formKey = GlobalKey<FormState>();

  @visibleForTesting
  final Map<String, String> newItemDetail = {};

  Future getResponseDataList() async {
    try {
      state = state.copyWith(
        isLoading: true,
      );

      ResponseData responseData =
          await responseDataRepository.getResponseData();

      if (responseData.data == null) {
        return Future.error(DioException);
      }

      ResponseDataList responseDataProductList = responseData.data!.firstWhere(
        (item) => item.type == ItemType.productList,
      );

      ProductList? productList =
          responseDataProductList.customAttributes?.productList;

      state = state.copyWith(
        apiData: responseData.data ?? [],
        productList: productList,
        isLoading: false,
      );
    } catch (e) {
      return Future.error(e);
    }
  }

  void updateNewItemDetail({
    required String key,
    required String value,
  }) {
    newItemDetail[key] = value;
  }

  Future<void> pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      var imagePath = await image.readAsBytes();

      var fileSize = imagePath.length;
      // Check if image is smaller than 5mb
      if (fileSize <= 5 * 1024 * 1024) {
        state = state.copyWith(
          imagePath: image.path,
        );
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Image size exceeds 5 MB")),
          );
        }
      }
    }
  }

  String? validateInput({
    String? value,
    required dform.Form form,
  }) {
    if (form.required == false) {
      return null;
    }

    if (value == null || value.isEmpty) {
      return TextConstants.emptyForm;
    }

    if (form.type == dform.FormType.number) {
      if (form.maxValue == null || form.minValue == null) {
        return TextConstants.rangeNotFound;
      } else {
        double number = double.parse(value);
        if (number < form.minValue!.toDouble() ||
            number > form.maxValue!.toDouble()) {
          return "${TextConstants.outsideRange} ${form.minValue.toString().toFormattedVND()} - ${form.maxValue.toString().toFormattedVND()}";
        }
      }
    }

    if (form.type == dform.FormType.text) {
      if (form.maxLength == null) {
        return TextConstants.rangeNotFound;
      } else {
        if (value.length > form.maxLength!.toInt()) {
          return "${TextConstants.textTooLong} ${form.maxLength} kí tự.";
        }
      }
    }

    return null;
  }

  Item? createNewItem() {
    if (!newItemDetail.containsKey('productName') ||
        !newItemDetail.containsKey('price')) {
      return null;
    }

    Item newItem = Item(
      name: newItemDetail['productName'],
      price: int.parse(newItemDetail['price']!),
      imageSrc: state.imagePath,
    );

    List<Item>? itemList = [...?state.productList?.items];
    itemList.insert(0, newItem);

    state = state.copyWith(
      productList: ProductList(items: itemList),
    );

    return newItem;
  }
}
