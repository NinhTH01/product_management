### To run the project, please perform the following steps:

- Step 1: Verify installations

```sh
$ flutter doctor
```

- Step 2: Pull project dependencies

```sh
$ flutter pub get
```

- Step 3: Generate the generated files

```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
``` 

- Step 4: Build and test app

### File hierachy of project:
```
📁 product_management
    |- 📁 assets
        |- 📁 colors
            |- colors.xml
        |- 📁 images
            |- ....png
    |- 📁 android
    |- 📁 ios
    |- 📁 lib
        |- 📁 components
        |- 📁 data
            |- 📁 models
            |- 📁 providers
            |- 📁 repositories
            |- 📁 services
        |- 📁 router
            |- app_router.dart
            |- app_router.g.dart
        |- 📁 screens
            |- 📁 components
            |- 📁 product_management
        |- 📁 resources
            |- 📁 gen
                |- assets.gen.dart
                |- colors.gen.dart
        |- 📁 utilities
            |- 📁 constants
            |- 📁 extensions
        main.dart      
    |- 📁 packages
    |- 📁 test
```

* Note:

```sh
Default device simulator for developing is Iphone SE3rd
```

Extra requirements that achieved:
- Add basecode template.
- Responsive UI.
- Compatible with both Android and iOS devices.
- Write unit and widget test.
- The popup dialog when adding product using native view as plugin instead. (product_management/packages/native_dialog) 
