import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils.dart';
import '../../../constant/style.dart';
import '../../../provider/riverpod/model/my_user.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import '../../../util/navigator_util.dart';
import 'vip_header.dart';

const kAvatarHeight = 58.0;

// 头部容器
class HeaderIndex extends ConsumerWidget {
  const HeaderIndex({Key? key}) : super(key: key);

  final TextStyle subTitleStyle =
      const TextStyle(color: Colors.black26, fontSize: 12);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user = ref.watch(userRiverpod).user;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            utils.widgetUtils.marginTop(),
            AnimatedSwitcher(duration: const Duration(milliseconds: 300),child: user==null ? _loginWidgetLayout(context) : _loginSuccessLayout(user) ,),
            // _renderCounts(),
            const SizedBox(
              height: 44,
            ),
            const VipHeader()
          ],
        ),
      ),
    );
  }


  

  /// 已登录显示
  Widget _loginSuccessLayout(MyUser user) {
    return Column(
      children: [
        Row(
          children: [
            utils.widgetUtils.marginRight(),
            // 用户头像
            ExtendedImage.network(
              'https://s3.bmp.ovh/imgs/2022/03/63a168e31a3ae7e0.jpeg',
              width: kAvatarHeight,
              height: kAvatarHeight,
              borderRadius: BorderRadius.circular(50),
              shape: BoxShape.rectangle,
            ),
            utils.widgetUtils.marginRight(),
            Column(
              children: [
                Text(
                  user.username.isNotEmpty ? user.username : '未设置昵称',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  'ID: ${user.loginNumber}',
                  style: const TextStyle(color: Colors.white54),
                )
              ],
            )
            // 昵称
          ],
        ),
      ],
    );
  }

  /// 登录跳转
  Widget _loginWidgetLayout(BuildContext context) {
    
    return GestureDetector(
      onTap: () => NavigatorUtil.gotoUserLoginPage(context),
      child: Container(
        alignment: Alignment.center,
        child: Row(
              children: [
                const SizedBox(
                  width: 68,
                  height: 68,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.people_outline,
                      size: 29,
                      color: Colors.pink,
                    ),
                  ),
                ),
                const SizedBox(width: 12,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '登录/注册',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(
                      height: 4,
                    ),
                    // 登录图标
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/qq.svg',
                          width: 32,
                          height: 32,
                          colorFilter:  ColorFilter.mode(context.iconColor ?? Colors.red, BlendMode.srcIn),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(
                          'assets/svg/wechat.svg',
                          width: 28,
                          height: 28,
                          colorFilter:  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
