<p align="center">
    <img src="https://static.saintic.com/picbed/huang/2020/12/14/1607875349615.png">
</p>

<p align="center">
    <a href="https://jq.qq.com/?_wv=1027&k=Z0AHodXB"><img src="https://badgen.net/badge/QQ%E7%BE%A4/706438100/pink" /></a>
    <a href="https://itbug.shop"><img src="https://badgen.net/badge/%E5%85%B8%E5%85%B8%E7%9A%84%E5%B0%8F%E5%8D%96%E9%83%A8/v3.0.0/red" /></a>
    <a href="https://flutter.dev/docs/get-started/install/windows"><img src="https://badgen.net/badge/flutter/3.19.5/red" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/stargazers"><img src="https://badgen.net/github/stars/mdddj/flutter_simple_shop" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/network/members"><img src="https://badgen.net/github/forks/mdddj/flutter_simple_shop" /></a>
</p>



接口文档: <a href='https://apifox.com/apidoc/shared-6f74775d-40ca-4a07-ad1e-dd9c8480f927'>Apifox</a>

```dart
/// lib/main.dart
const apiHost = 'https://api.itbug.shop';
const apiPort = '443';
```

---

[//]: # ( app 可视化后台管理：https://github.com/mdddj/ddxmb-admin)

[//]: # ()

[//]: # (# APP 应用名：典典的小卖部)

[//]: # ()

[//]: # (- 接口来自于大淘客，折淘客，淘宝联盟等等)

[//]: # (- 支持淘宝、拼多多、京东、唯品会、饿了么、美团等优惠券领取)

[//]: # (- 支持 Android、Ios 双端编译)

[//]: # ()

[//]: # (| SDK 文档             | [![pub]&#40;https://badgen.net/pub/v/dd_taoke_sdk&#41;]&#40;https://pub.dev/packages/dd_taoke_sdk&#41; |)

[//]: # (| -------------------- | -------------------------------------------------------------------------------------- |)

[//]: # (| Web 管理后台         | [Github &#40;Antd Pro React TypeScript 版&#41;]&#40;https://github.com/mdddj/ddxmb-admin&#41;          |)

[//]: # (| Getx 重构版          | [典典的小卖部 getx 重构版本]&#40;https://github.com/mdddj/simple_shop_v2&#41;                  |)

[//]: # (| jetpack compose 版本 | [jetpack compose &#40;kotlin&#41; 版本]&#40;https://github.com/mdddj/dd_simple_shop_jetpack&#41;       |)

[//]: # ()


[//]: # ()

[//]: # (| 网络监测工具                      | [![pub]&#40;https://badgen.net/pub/v/flutter_network_connection&#41;]&#40;https://pub.dev/packages/flutter_network_connection&#41;   |)

[//]: # (| --------------------------------- | -------------------------------------------------------------------------------------------------------------------- |)

[//]: # (| 扫码枪 Spp 模式获取数据           | [![pub]&#40;https://badgen.net/pub/v/scanner_gun&#41;]&#40;https://pub.dev/packages/scanner_gun&#41;                                 |)

[//]: # (| 息屏显示方法封装                  | [![pub]&#40;https://badgen.net/pub/v/flutter_lifecycle_by_resume&#41;]&#40;https://pub.dev/packages/flutter_lifecycle_by_resume&#41; |)

[//]: # (| 商米手持 pda 端扫描数据获取插件   | [![pub]&#40;https://badgen.net/pub/v/sm_scan&#41;]&#40;https://pub.dev/packages/sm_scan&#41;                                         |)

[//]: # (| 新大陆手持 pda 端扫描数据获取插件 | [![pub]&#40;https://badgen.net/pub/v/xindalu_scan_flutter&#41;]&#40;https://pub.dev/packages/xindalu_scan_flutter&#41;               |)

## 关于本项目

淘宝客APP,在线商城

## 系统设计

1.系统定时任务,没5秒查询一下渠道订单,如果查询到数据,会插入到本地数据库中,并关联用户
2.接口数据来自大淘客,和折淘客,可以在web后台绑定自己的apikey

# 项目截图

| 一些                                                                                         | 截图                                                                                         | 预览                                                                                         |
|:-------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|
| ![1598619522755.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619522755.jpg) | ![1598619524192.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524192.jpg) | ![1598619524535.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524535.jpg) |
| ![1598619524394.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524394.jpg) | ![1598619519325.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619519325.jpg) | ![1598619513469.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619513469.jpg) |
| ![1598619516304.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516304.jpg) | ![1598619516278.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516278.jpg) | ![1598619478353.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478353.jpg) |
| ![1598619478848.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478848.jpg) | ![1598619472801.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619472801.jpg) | ![1598619476671.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619476671.jpg) |
| ![1598619475878.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619475878.jpg) | -                                                                                          | -                                                                                          |

# 请喝咖啡

![1603946039040.png](https://static.saintic.com/picbed/huang/2020/10/29/1603946039040.png)

在web中构建

```dart
flutter build
web --dart-define=FLUTTER_WEB_CANVASKIT_URL=https: //unpkg.zhimg.com/canvaskit-wasm@0.24.0/bin/
```

全局加载器

```html

<link rel="stylesheet" href="css/uikit.min.css"/>
<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 150px;
    }


</style>


<body class="container">
<div style="text-align: center">
    <div><span uk-spinner="ratio: 4.5"></span></div>
    <div style="margin-top: 12px">加载中</div>
</div>
<script src="js/uikit.min.js"></script>
```