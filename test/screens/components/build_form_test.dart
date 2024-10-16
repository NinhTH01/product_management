import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:product_management/data/models/api/response/form/form.dart'
    as dform;
import 'package:product_management/screens/components/build_form.dart';

void main() {
  group('buildForm', () {
    late dform.Form textForm;
    late dform.Form numberForm;
    late dform.Form fileUploadForm;
    late String imagePath;
    String? inputError;

    setUp(() {
      textForm = const dform.Form(
        type: dform.FormType.text,
        required: true,
        label: 'Text Label',
        name: 'textField',
        maxLength: 10,
      );

      numberForm = const dform.Form(
        type: dform.FormType.number,
        required: true,
        label: 'Number Label',
        name: 'numberField',
        minValue: 1,
        maxValue: 100,
      );

      fileUploadForm = const dform.Form(
        type: dform.FormType.fileUpload,
        label: 'Upload Image',
      );

      imagePath = 'path/to/local/image.png';

      inputError = null;
    });

    testWidgets('displays a text field when form type is text',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(builder: (context) {
          return MaterialApp(
            home: Scaffold(
              body: buildForm(
                context: context,
                imagePath: null,
                form: textForm,
                validateInput: ({
                  String? value,
                  required dform.Form form,
                }) {
                  return inputError;
                },
                updateNewItemDetail: ({
                  required String key,
                  required String value,
                }) {},
                pickImage: (BuildContext context) async {},
              ),
            ),
          );
        }),
      );

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.text('Text Label'), findsOneWidget);
    });

    testWidgets('displays a number field when form type is number',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(builder: (context) {
          return MaterialApp(
            home: Scaffold(
              body: buildForm(
                context: context,
                imagePath: null,
                form: numberForm,
                validateInput: ({
                  String? value,
                  required dform.Form form,
                }) {
                  return inputError;
                },
                updateNewItemDetail: ({
                  required String key,
                  required String value,
                }) {},
                pickImage: (BuildContext context) async {},
              ),
            ),
          );
        }),
      );

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.text('Number Label'), findsOneWidget);
    });
    //
    testWidgets('displays an image and button when form type is fileUpload',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(builder: (context) {
          return MaterialApp(
            home: Scaffold(
              body: buildForm(
                context: context,
                imagePath: imagePath,
                form: fileUploadForm,
                validateInput: ({
                  String? value,
                  required dform.Form form,
                }) {
                  return inputError;
                },
                updateNewItemDetail: ({
                  required String key,
                  required String value,
                }) {},
                pickImage: (BuildContext context) async {},
              ),
            ),
          );
        }),
      );

      // Verify that the image and upload button are displayed.
      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      expect(find.text('Upload Image'), findsOneWidget);
    });

    testWidgets('calls pickImage function when upload button is pressed',
        (WidgetTester tester) async {
      bool imagePicked = false;

      await tester.pumpWidget(
        Builder(builder: (context) {
          return MaterialApp(
            home: Scaffold(
              body: buildForm(
                context: context,
                imagePath: null,
                form: fileUploadForm,
                validateInput: ({
                  String? value,
                  required dform.Form form,
                }) {
                  return null;
                },
                updateNewItemDetail: ({
                  required String key,
                  required String value,
                }) {},
                pickImage: (BuildContext context) async {
                  imagePicked = true;
                },
              ),
            ),
          );
        }),
      );

      // Tap on the upload button and verify that pickImage is called.
      await tester.tap(find.byType(TextButton));
      await tester.pump();

      expect(imagePicked, isTrue);
    });
  });
}
