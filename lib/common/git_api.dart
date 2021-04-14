import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/app_constants.dart';
import 'package:flutter_eyepetizer/model/home_page_recommend.dart';

class Git {
  // 在网络请求过程中可能会需要使用当前的context信息，比如在请求失败时
  // 打开一个新路由，而打开新路由需要context信息。
  Git([this.context]) {
    _options = Options(extra: {Constants.context: context});
  }

  BuildContext? context;
  Options? _options;
  static Dio dio = new Dio(BaseOptions(baseUrl: Constants.BASE_URL));

  static void init() {
    // 添加插件
    dio.interceptors.add(LogInterceptor(responseBody: true)); //开启请求日志
  }

  //首页推荐
  Future<HomePageRecommend> homePageRecommend() async {
    var r = await dio.get(
      configCommonParForUrl(Constants.HOMEPAGE_RECOMMEND_URL),
      options: _options,
    );
    return HomePageRecommend.fromJson(r.data);
  }

  //配置通用参数
  String configCommonParForUrl(String url) {
    var par =
        "udid=c73ca584c174edce&vc=6030012&vn=6.3.01&size=1080X2029&deviceModel=MI%208&first_channel=xiaomi&last_channel=xiaomi&system_version_code=29";
    ///url中有可能拼接着其他参数
    if (url.contains("?")) {
      return url += "&$par";
    } else {
      return url += "?$par";
    }
  }
}
