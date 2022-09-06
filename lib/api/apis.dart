import 'package:dataoke_sdk/model/base/favorite_model.dart';
import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/util/log.dart';

import 'base.dart';

extension DyExt on dynamic {
  bool get success =>
      this is Map<String, dynamic> ? this['state'] == 200 : false;

  String get msg => this is Map<String, dynamic> ? this['message'] : 'error';

  @Doc(message: '简单处理服务器返回数据')
  void simpleHandle() {
    if (this.success) {
      toast(this.msg);
    } else {
      toast('失败:${this.msg}');
    }
  }
}


///添加到收藏夹接口
class FavoritesAddApi extends MyAppCoreApi {
  FavoritesAddApi() : super("/api/user/favorites/save", httpMethod: HttpMethod.post);

  @Doc(message: "服务器发起请求,添加收藏")
  static Future<void> doRequeset(FavoriteModel favoriteModel) async {
    final api = FavoritesAddApi();
    final result = await api.request(loadingText: '正在添加到收藏夹',showDefaultLoading: false,data: favoriteModel.getJson());
    result.simpleHandle();
  }
}
