import 'package:product_management/data/models/api/response/response_data/response_data.dart';
import 'package:product_management/data/services/api/api_client/api_client.dart';

abstract class ResponseDataRepository {
  Future<ResponseData> getResponseData();
}

class ResponseDataRepositoryImpl implements ResponseDataRepository {
  ResponseDataRepositoryImpl(
    this._apiPostClient,
  );

  final ApiClient _apiPostClient;

  @override
  Future<ResponseData> getResponseData() async {
    final responseData = await _apiPostClient.getResponseData();
    return responseData;
  }
}
