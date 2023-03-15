import 'package:auto_route/auto_route.dart';
import 'package:myfridge/app/pages/cgu/cgu.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/cgu',
      page: CGUPage,
    ),    
  ]
)
class $AppRouter {}