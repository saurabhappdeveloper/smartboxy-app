import 'package:get/get.dart';
import 'package:smart_boxy/core/routes/routes_variable.dart';
import 'package:smart_boxy/module/login/views/login.dart';

routes() => [
      //Auth_user
      GetPage(name: RoutesApp.loginRoute, page: () => Login()),
     
    ];
