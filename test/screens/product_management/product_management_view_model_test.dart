import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:product_management/data/models/api/response/custom_attributes/custom_attributes.dart';
import 'package:product_management/data/models/api/response/form/form.dart'
    as dform;
import 'package:product_management/data/models/api/response/product_list/product_list.dart';
import 'package:product_management/data/models/api/response/response_data/response_data.dart';
import 'package:product_management/data/models/api/response/response_data_list/response_data_list.dart';
import 'package:product_management/data/repositories/api/response_data/response_data_repository.dart';
import 'package:product_management/screens/product_management/product_management_view_model.dart';
import 'package:product_management/utilities/constants/app_text_constants.dart';
import 'package:product_management/utilities/extension/string.dart';

import 'product_management_view_model_test.mocks.dart';

@GenerateMocks([ResponseDataRepository])
void main() {
  late MockResponseDataRepository mockRepository;
  late ProductManagementViewModel viewModel;

  setUp(() {
    mockRepository = MockResponseDataRepository();
    viewModel = ProductManagementViewModel(
      responseDataRepository: mockRepository,
    );
  });

  group('getResponseDataList', () {
    test('should update state with data on success', () async {
      const mockResponseData = ResponseData(data: [
        ResponseDataList(
          type: ItemType.productList,
          customAttributes: CustomAttributes(
            productList: ProductList(items: []),
          ),
        )
      ]);
      when(mockRepository.getResponseData())
          .thenAnswer((_) async => mockResponseData);

      await viewModel.getResponseDataList();

      expect(viewModel.state.isLoading, false);
      expect(viewModel.state.apiData, isNotEmpty);
      expect(viewModel.state.productList, isNotNull);
    });

    test('should return error on failure', () async {
      when(mockRepository.getResponseData())
          .thenThrow(DioException(requestOptions: RequestOptions(path: '')));

      expect(() async => await viewModel.getResponseDataList(),
          throwsA(isA<DioException>()));
    });
  });

  group('updateNewItemDetail', () {
    test('should update _newItemDetail with given key-value pair', () {
      viewModel.updateNewItemDetail(key: 'productName', value: 'Test Product');

      expect(viewModel.newItemDetail['productName'], 'Test Product');
    });
  });

  group('validateInput', () {
    test('should return null if the form is not required', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.text,
        required: false,
      );

      final result = viewModel.validateInput(
        value: null,
        form: form,
      );

      expect(result, null);
    });

    test('should return emptyForm message if required form is empty', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.text,
        required: true,
      );

      final result = viewModel.validateInput(
        value: '',
        form: form,
      );

      expect(result, TextConstants.emptyForm);
    });

    test(
        'should return rangeNotFound for number input if max or min values are null',
        () {
      const dform.Form form = dform.Form(
        type: dform.FormType.number,
        required: true,
      );

      final result = viewModel.validateInput(
        value: '5',
        form: form,
      );

      expect(result, TextConstants.rangeNotFound);
    });

    test('should return outsideRange message for number outside range', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.number,
        required: true,
        minValue: 10,
        maxValue: 20,
      );

      final result = viewModel.validateInput(
        value: '25',
        form: form,
      );

      expect(
        result,
        "${TextConstants.outsideRange} ${form.minValue.toString().toFormattedVND()} - ${form.maxValue.toString().toFormattedVND()}",
      );
    });

    test('should return null for number within range', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.number,
        required: true,
        minValue: 10,
        maxValue: 20,
      );

      final result = viewModel.validateInput(
        value: '15',
        form: form,
      );

      expect(result, null);
    });

    test('should return rangeNotFound for text input if maxLength is null', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.text,
        required: true,
      );

      final result = viewModel.validateInput(
        value: 'Some text',
        form: form,
      );

      expect(result, TextConstants.rangeNotFound);
    });

    test('should return textTooLong message if text exceeds maxLength', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.text,
        required: true,
        maxLength: 5,
      );

      final result = viewModel.validateInput(
        value: 'This text is too long',
        form: form,
      );

      expect(result, "${TextConstants.textTooLong} ${form.maxLength} kí tự.");
    });

    test('should return null if text is within maxLength', () {
      const dform.Form form = dform.Form(
        type: dform.FormType.text,
        required: true,
        maxLength: 20,
      );

      final result = viewModel.validateInput(
        value: 'Short text',
        form: form,
      );

      expect(result, null);
    });
  });
}
