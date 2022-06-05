

import 'package:crlo/view/screens/auth/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{

//initialRoute
static const splash =Routes.splashScreen;

//getPages
static final routes=[
  GetPage(
    name: Routes.splashScreen,
    page: () => const SplashScreen(),
  )
];


}

class Routes{
  static const splashScreen = '/splashScreen';


}