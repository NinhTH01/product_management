import 'dart:io';

import 'package:flutter/material.dart';
import 'package:product_management/data/models/api/response/form/form.dart'
    as dform;
import 'package:product_management/resources/gen/colors.gen.dart';
import 'package:product_management/utilities/constants/app_text_constants.dart';
import 'package:product_management/utilities/constants/app_text_styles.dart';

Widget buildForm({
  required BuildContext context,
  String? imagePath,
  required dform.Form form,
  required Function({
    String? value,
    required dform.Form form,
  }) validateInput,
  required Function({
    required String key,
    required String value,
  }) updateNewItemDetail,
  required Function(BuildContext context) pickImage,
}) {
  switch (form.type) {
    case dform.FormType.text || dform.FormType.number:
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text(
                    form.required == true ? '* ' : '',
                    style: AppTextStyles.defaultStyle.copyWith(
                      color: ColorName.red,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      form.label ?? '',
                      style: AppTextStyles.s14w600,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              keyboardType: form.type == dform.FormType.number
                  ? TextInputType.number
                  : TextInputType.text,
              validator: (String? value) {
                return validateInput(
                  value: value,
                  form: form,
                );
              },
              onChanged: (String value) {
                if (form.name == null) {}
                updateNewItemDetail(
                  key: form.name!,
                  value: value,
                );
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      );

    case dform.FormType.fileUpload:
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              form.label ?? '',
              style: AppTextStyles.s14w600,
            ),
          ),
          imagePath != null ? Image.file(File(imagePath)) : const SizedBox(),
          SizedBox(
            width: 220,
            child: TextButton(
              onPressed: () async {
                await pickImage(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: ColorName.grayFFEDEDED,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.cloud_upload_outlined,
                    size: 20.0,
                    color: ColorName.black,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      TextConstants.uploadImage,
                      style: AppTextStyles.s12w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

    case null:
      return const SizedBox();
  }
}
