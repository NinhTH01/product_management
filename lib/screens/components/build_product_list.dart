import 'dart:io';

import 'package:flutter/material.dart';
import 'package:product_management/data/models/api/response/item/item.dart';
import 'package:product_management/data/models/api/response/product_list/product_list.dart';
import 'package:product_management/resources/gen/assets.gen.dart';
import 'package:product_management/utilities/constants/app_text_styles.dart';
import 'package:product_management/utilities/extension/string.dart';

@visibleForTesting
Widget buildProductImage({required String imgSrc}) {
  if (imgSrc == '') {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        Assets.images.images.path,
        fit: BoxFit.fill,
      ),
    );
  }

  if (imgSrc.startsWith('http://') || imgSrc.startsWith('https://')) {
    return AspectRatio(
      aspectRatio: 1,
      child: FadeInImage.assetNetwork(
        image: imgSrc,
        placeholder: Assets.images.images.path,
        placeholderFit: BoxFit.fill,
      ),
    );
  } else {
    return AspectRatio(
        aspectRatio: 1,
        child: Image.file(
          File(imgSrc),
        ));
  }
}

@visibleForTesting
Widget buildProduct({required Item item}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildProductImage(imgSrc: item.imageSrc ?? ''),
      const SizedBox(height: 8.0),
      Text(
        item.name ?? '',
        style: AppTextStyles.s16w700,
      ),
      Text(
        item.price == null ? '' : item.price.toString().toFormattedVND(),
        style: AppTextStyles.s14w600,
      ),
    ],
  );
}

Widget buildProductList(ProductList? productList) {
  if (productList == null) {
    return const SizedBox();
  }

  return GridView.builder(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 24.0,
      childAspectRatio: 0.7,
    ),
    itemCount: productList.items?.length ?? 0,
    itemBuilder: (BuildContext context, int index) {
      if (productList.items == null) {
        return const SizedBox();
      }
      return buildProduct(item: productList.items![index]);
    },
  );
}
