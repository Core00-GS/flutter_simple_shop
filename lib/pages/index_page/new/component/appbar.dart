import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart' hide View;
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/view.dart';
import '../../../../index.dart';

/// 首页导航栏
class IndexHomeAppbar extends View implements PreferredSizeWidget {
  final TabController tabController;

  const IndexHomeAppbar({Key? key, required this.tabController}) : super(key: key);

  Future<void> navTo(BuildContext context) async {
    await context.navToWidget(to: const SearchPage());
  }



  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return SliverAppBar(
      leadingWidth: 58,
      title:  Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade100),borderRadius: 12.borderRadius
        ),
        child: Row(
          children: [
            const Icon(CupertinoIcons.search,color: Colors.grey,size: 16),
            const SizedBox(width: 6,),
            Text('搜索产品,比如:辣条',style: context.textTheme.bodyMedium,)
          ],
        ),
      ).click(() => navTo(context)),
      leading: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/svg/diandian.svg',
          width: 34,
          height: 34,
          colorFilter: ColorFilter.mode(context.iconColor ?? Colors.red, BlendMode.srcIn),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
            ))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(38),
        child: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: [
            const Tab(
              text: '精选',
            ),
            ...appCore.watchCategory.map((element) => Tab(
              text: element.cname,
            ))
          ],
          onTap: (int index) {

          },
        ),
      ),
    );
  }
}
