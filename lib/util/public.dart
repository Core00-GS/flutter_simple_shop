part of util;
Color getColor(String rgb){
  var colorsRgb = rgb.split(',');
  return Color.fromRGBO(int.parse(colorsRgb[0]), int.parse(colorsRgb[1]), int.parse(colorsRgb[2]), 1);
}


void actionLog(String action,String key,dynamic value) {
  wtfLog({
    "操作":action,
    key: value
  });
}