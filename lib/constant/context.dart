part of constant;

extension ContextEx on BuildContext {
  ///每行显示多少个产品
  int get waterfallFlowCrossAxisCount {
    var crossAxisCount = 2;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        crossAxisCount = 6;
        break;
      case DeviceScreenType.tablet:
        crossAxisCount = 4;
        break;
      case DeviceScreenType.mobile:
        crossAxisCount = 2;
        break;
      default:
        break;
    }
    return crossAxisCount;
  }

  /// tab是否为滚动样式
  bool get tabIsScrollable {
    var result = false;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        result = true;
        break;
      case DeviceScreenType.tablet:
        result = true;
        break;
      case DeviceScreenType.mobile:
        result = false;
        break;
      default:
        break;
    }
    return result;
  }

  DeviceScreenType get deviceScreenType =>
      getDeviceType(MediaQuery.of(this).size);
}
