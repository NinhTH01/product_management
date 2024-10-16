// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ProductManagementRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductManagementScreen(),
      );
    }
  };
}

/// generated route for
/// [ProductManagementScreen]
class ProductManagementRoute extends PageRouteInfo<void> {
  const ProductManagementRoute({List<PageRouteInfo>? children})
      : super(
          ProductManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductManagementRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
