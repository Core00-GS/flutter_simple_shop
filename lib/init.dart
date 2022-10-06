
import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:get_it/get_it.dart';
import 'index.dart';


void initNetUtil() {
  BaseApi.host = "$apiHost:$apiPort";
  HttpOverrides.global = MyHttpOverrides();
}

void initInstance(){
  GetIt.instance.registerSingleton<Utils>(Utils());
  GetIt.instance.registerSingleton<WidgetUtils>(WidgetUtils());
  GetIt.instance.registerSingleton<NavigatorUtil>(NavigatorUtil());
  GetIt.instance.registerSingleton<Api>(Api());
  GetIt.instance.registerSingleton<TKApiService>(TKApiService());
  GetIt.instance.registerSingleton<BlogApi>(BlogApi());
  GetIt.instance.registerSingleton<UserApi>(UserApi());
}


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}