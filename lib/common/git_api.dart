import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/app_constants.dart';

class Git {
  // 在网络请求过程中可能会需要使用当前的context信息，比如在请求失败时
  // 打开一个新路由，而打开新路由需要context信息。
  Git([this.context]) {
    _options = Options(extra: {Constants.context: context});
  }

  BuildContext context;
  Options _options;
  static Dio dio = new Dio(BaseOptions(baseUrl: Constants.BASE_URL));

  static void init() {
    // 添加缓存插件
  }
}
