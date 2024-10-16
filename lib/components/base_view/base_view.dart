import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:product_management/components/base_view/base_view_mixin.dart';
import 'package:product_management/components/base_view/base_view_model.dart';
import 'package:product_management/components/dialog/dialog_provider.dart';
import 'package:product_management/data/models/api/response/base_response_error/base_response_error.dart';

abstract class BaseView extends ConsumerStatefulWidget {
  const BaseView({
    super.key,
  });
}

abstract class BaseViewState<View extends BaseView,
        ViewModel extends BaseViewModel> extends ConsumerState<View>
    with BaseViewMixin {
  ViewModel get viewModel;

  final logger = Logger();

  @mustCallSuper
  void onInitState() {
    logger.d('Init State: $runtimeType');
  }

  @mustCallSuper
  void onDispose() {
    logger.d('Dispose: $runtimeType');
  }

  @override
  void initState() {
    onInitState();
    super.initState();
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => buildView(context);

  void nextFocus() {
    FocusScope.of(context).nextFocus();
  }

  Future<void> handleError(
    Object error, {
    void Function()? onButtonTapped,
  }) async {
    String? errorMessage;

    if (error is DioException) {
      final response = error.response;

      if (response != null) {
        try {
          if (response.data is Map<String, dynamic>) {
            errorMessage = response.data['message'];
          } else {
            final errorJson = jsonDecode(response.data);
            errorMessage = BaseResponseError.fromJson(errorJson).message;
          }
        } catch (_) {
          errorMessage = error.response?.statusMessage;
        }
      } else {
        errorMessage = error.message;
      }
    }

    if (errorMessage != null) {
      await ref.read(dialogProvider).showAlertDialog(
            context: context,
            title: errorMessage,
            onClosed: onButtonTapped,
          );
    }
  }

  Future<void> showNotificationDialog({
    required BuildContext context,
    required String name,
  }) async {
    ref.read(dialogProvider).showNativeDialog(
          context: context,
          name: name,
        );
  }
}
