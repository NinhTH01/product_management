import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'native_dialog_platform_interface.dart';

class NativeDialog {
  Future<String?> getPlatformVersion() {
    return NativeDialogPlatform.instance.getPlatformVersion();
  }

  void showNativeAchievementView({
    required BuildContext context,
    required String name,
  }) {
    if (Platform.isIOS) {
      NativeDialogPlatform.instance.showAchievementIniOS(
        context: context,
        name: name,
      );
    } else {
      NativeDialogPlatform.instance.showAchievementInAndroid(
        context: context,
        name: name,
      );
    }
  }
}
