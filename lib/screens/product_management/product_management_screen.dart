import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_management/components/base_view/base_view.dart';
import 'package:product_management/data/models/api/response/form/form.dart'
    as dform;
import 'package:product_management/data/models/api/response/item/item.dart';
import 'package:product_management/data/models/api/response/response_data_list/response_data_list.dart';
import 'package:product_management/data/providers/response_data_repository_provider.dart';
import 'package:product_management/resources/gen/colors.gen.dart';
import 'package:product_management/router/app_router.dart';
import 'package:product_management/screens/components/build_form.dart';
import 'package:product_management/screens/components/build_product_list.dart';
import 'package:product_management/screens/product_management/product_management_state.dart';
import 'package:product_management/screens/product_management/product_management_view_model.dart';
import 'package:product_management/utilities/constants/app_text_constants.dart';
import 'package:product_management/utilities/constants/app_text_styles.dart';

final _provider = StateNotifierProvider.autoDispose<ProductManagementViewModel,
    ProductManagementState>(
  (ref) => ProductManagementViewModel(
    responseDataRepository: ref.watch(responseDataRepositoryProvider),
  ),
);

@RoutePage()
class ProductManagementScreen extends BaseView {
  const ProductManagementScreen({super.key});

  @override
  BaseViewState<ProductManagementScreen, ProductManagementViewModel>
      createState() => _ProductManagementViewState();
}

class _ProductManagementViewState
    extends BaseViewState<ProductManagementScreen, ProductManagementViewModel> {
  @override
  Future<void> onInitState() async {
    super.onInitState();
    await Future.delayed(Duration.zero, () async {
      await _onInitData();
    });
  }

  Widget _buildInterfaceFromAPI({required ResponseDataList item}) {
    switch (item.type) {
      case ItemType.label:
        return Text(
          item.customAttributes?.label?.text ?? '',
          style: AppTextStyles.s20w700,
          textAlign: TextAlign.center,
        );

      case ItemType.productSubmitForm:
        List<dform.Form> formList = item.customAttributes?.form ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Form(
            key: viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: formList.map((dform.Form form) {
                return buildForm(
                  context: context,
                  form: form,
                  validateInput: viewModel.validateInput,
                  updateNewItemDetail: viewModel.updateNewItemDetail,
                  pickImage: viewModel.pickImage,
                  imagePath: state.imagePath,
                );
              }).toList(),
            ),
          ),
        );

      case ItemType.button:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorName.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (viewModel.formKey.currentState!.validate()) {
                      Item? newItem = viewModel.createNewItem();
                      if (newItem != null) {
                        showNotificationDialog(
                          context: context,
                          name: newItem.name ?? '',
                        );
                      }
                    }
                  },
                  child: Text(
                    item.customAttributes?.button?.text ?? '',
                    style: AppTextStyles.s14w600.copyWith(
                      color: ColorName.white,
                    ),
                  )),
            ),
          ],
        );

      case ItemType.productList:
        return buildProductList(state.productList);

      case null:
        return const SizedBox();
    }
  }

  @override
  Widget buildBody(BuildContext context) {
    return state.isLoading
        ? const Center(child: CircularProgressIndicator())
        : state.apiData.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextConstants.noData,
                      style: AppTextStyles.s14w400,
                    ),
                    TextButton(
                      child: Text(TextConstants.retry,
                          style: AppTextStyles.s14w400.copyWith(
                            color: ColorName.blue,
                          )),
                      onPressed: () async {
                        await _onInitData();
                      },
                    )
                  ],
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                itemCount: state.apiData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildInterfaceFromAPI(
                    item: state.apiData[index],
                  );
                },
              );
  }

  @override
  ProductManagementViewModel get viewModel => ref.read(_provider.notifier);

  @override
  String get screenName => ProductManagementRoute.name;

  ProductManagementState get state => ref.watch(_provider);

  Future<void> _onInitData() async {
    try {
      await viewModel.getResponseDataList();
    } catch (e) {
      handleError(e);
    }
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;
}
