/// 空安全校验，可传默认值
String checkNullForString(var str, {String def = ""}) {
  return str is String ? str : def;
}

int checkNullForInt(var value, {int def = 0}) {
  return value is int ? value : def;
}

double checkNullForDouble(var value, {double def = 0.0}) {
  return value is double ? value : def;
}
