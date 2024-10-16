import 'package:dio/dio.dart';
import 'package:product_management/data/models/api/response/response_data/response_data.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://hiring-test.stag.tekoapis.net/api/products')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/management')
  Future<ResponseData> getResponseData();
}
