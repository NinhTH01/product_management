import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:product_management/data/models/api/response/item/item.dart';
import 'package:product_management/data/models/api/response/product_list/product_list.dart';
import 'package:product_management/screens/components/build_product_list.dart';
import 'package:product_management/utilities/extension/string.dart';

void main() {
  group('_buildProductImage', () {
    testWidgets('displays placeholder image if imgSrc is empty',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: buildProductImage(imgSrc: ''),
          ),
        ),
      );

      // Verify that the placeholder image is displayed.
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('displays local file image if imgSrc is a local path',
        (WidgetTester tester) async {
      const filePath = 'path/to/local/image.png';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: buildProductImage(imgSrc: filePath),
          ),
        ),
      );

      // Verify that the Image.file is displayed.
      expect(find.byType(Image), findsOneWidget);
    });
  });

  group('buildProductList', () {
    testWidgets('displays an empty widget when productList is null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: buildProductList(null),
          ),
        ),
      );

      // Verify that a SizedBox is displayed.
      expect(find.byType(SizedBox), findsOneWidget);
    });

    testWidgets('displays items in a grid when productList is provided',
        (WidgetTester tester) async {
      const productList = ProductList(items: [
        Item(name: 'Product 1', price: 10000, imageSrc: ''),
        Item(name: 'Product 2', price: 20000, imageSrc: ''),
      ]);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: buildProductList(productList),
          ),
        ),
      );

      // Verify that the correct number of items is displayed in the grid.
      expect(find.byType(GridView), findsOneWidget);
      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);
    });

    testWidgets('displays product price with formatted đ',
        (WidgetTester tester) async {
      const productList = ProductList(items: [
        Item(name: 'Product 1', price: 15000, imageSrc: ''),
      ]);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: buildProductList(productList),
          ),
        ),
      );
      String formattedText = '15000'.toFormattedVND();

      expect(find.text(formattedText), findsOneWidget);
    });
  });
}
