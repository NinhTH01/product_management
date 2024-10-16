import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:native_dialog/native_dialog.dart';
import 'package:product_management/data/providers/native_dialog_provider.dart';

import 'error_dialog.dart';

final dialogProvider = Provider<Dialog>(
  (ref) => Dialog(
    ref: ref,
    nativeDialog: ref.watch(nativeDialogProvider),
  ),
);

class Dialog {
  Dialog({
    required this.ref,
    required this.nativeDialog,
  });

  final Ref ref;

  final NativeDialog nativeDialog;

  int _numberOfShowedAlertDialogs = 0;

  Future<void> showAlertDialog({
    required BuildContext context,
    required String title,
    String? buttonTitle,
    VoidCallback? onClosed,
  }) async {
    while (_numberOfShowedAlertDialogs > 0) {
      _numberOfShowedAlertDialogs--;
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }

    _numberOfShowedAlertDialogs++;
    await showDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ErrorDialog(
          buttonTitle: buttonTitle,
          title: title,
          onClosed: () {
            if (onClosed != null) {
              onClosed();
            }
            Navigator.of(context).pop();
            _numberOfShowedAlertDialogs--;
          },
        );
      },
    );
  }

  void showNativeDialog({
    required BuildContext context,
    required String name,
  }) {
    nativeDialog.showNativeAchievementView(
      context: context,
      name: name,
    );
  }
}
