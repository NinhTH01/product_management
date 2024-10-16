import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_management/data/providers/api_client_provider.dart';
import 'package:product_management/data/repositories/api/response_data/response_data_repository.dart';

final responseDataRepositoryProvider = Provider<ResponseDataRepository>(
  (ref) => ResponseDataRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
