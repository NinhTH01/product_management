import 'package:auto_route/auto_route.dart';
import 'package:product_management/screens/product_management/product_management_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ProductManagementRoute.page,
          path: '/',
        ),
      ];
}
