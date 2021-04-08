import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/app_constants.dart';
import 'package:flutter_eyepetizer/model/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'git_api.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

class Global {
  static SharedPreferences _prefs;
  static Profile profile = Profile();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 初始化全局信息，会在APP启动时执行
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
    var _profile = _prefs.getString(Constants.profile);
    if (_profile != null) {
      try {
        profile = Profile.fromJson(json.decode(_profile));
      } catch (e) {
        print(e);
      }
    }

    //初始化网络请求相关配置
    Git.init();
  }

  // 持久化Profile信息
  static saveProfile() =>
      _prefs.setString(Constants.profile, json.encode(profile.toJson()));
}

