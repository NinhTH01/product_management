import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:product_management/data/models/api/response/response_data/response_data.dart';
import 'package:product_management/data/repositories/api/response_data/response_data_repository.dart';
import 'package:product_management/data/services/api/api_client/api_client.dart';

import 'response_data_repository_test.mocks.dart';

@GenerateMocks([ApiClient])
void main() {
  late ResponseDataRepositoryImpl repository;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = ResponseDataRepositoryImpl(mockApiClient);
  });

  group('ResponseDataRepositoryImpl', () {
    test('should return ResponseData when getResponseData is called', () async {
      const responseData = ResponseData();
      when(mockApiClient.getResponseData())
          .thenAnswer((_) async => responseData);

      final result = await repository.getResponseData();

      expect(result, responseData);
      verify(mockApiClient.getResponseData()).called(1);
    });

    test('should throw an exception when the api client throws', () async {
      when(mockApiClient.getResponseData()).thenThrow(Exception('API error'));

      expect(() async => await repository.getResponseData(), throwsException);
      verify(mockApiClient.getResponseData()).called(1);
    });
  });
}
