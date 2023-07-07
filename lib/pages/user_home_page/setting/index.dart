part of pages;

///设置页面
class SettingIndex extends StatelessWidget {
  const SettingIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('修改昵称'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              context.navToWidget(to: const UpdateUserNamePage());
            },
          ),
          ListTile(
            title: const Text('修改城市'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              context.navToWidget(to: const UpdateUserCityPage());
            },
          ),
          ListTile(
            title: const Text('修改工作'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              context.navToWidget(to: const UpdateUserJobPage());
            },
          )
        ],
      ),
    );
  }
}