import 'package:shopeasy/Pages/login&Registration.dart';
import 'package:shopeasy/main.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => LoginPage()),
    GetPage(name: "/homepage", page: () => const MyHomePage()),
  ];
}
