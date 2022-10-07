
import 'dart:io';

import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:get_it/get_it.dart';
import 'index.dart';


void initNetUtil() {
  BaseApi.host = "$apiHost:$apiPort";
  if(Platform.isAndroid){
    HttpOverrides.global = MyHttpOverrides();
  }
  if(kDebugMode){
    DdCheckPlugin.instance.init(BaseApi.getDio(),initHost: '192.168.199.88');
  }
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