
import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/common/global.dart';
import 'package:flutter_gen/gen_l10n/eyepetizer_localizations.dart';
import 'package:flutter_eyepetizer/static/profile_change_notifier.dart';
import 'package:provider/provider.dart';

class ThemeChangeRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(EyepetizerLocalizations.of(context)!.theme),
      ),
      body: ListView( //显示主题色块
        children: Global.themes.map<Widget>((e) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Container(
                color: e,
                height: 40,
              ),
            ),
            onTap: () {
              //主题更新后，MaterialApp会重新build
              Provider.of<ThemeModel>(context, listen: false).theme = e;
            },
          );
        }).toList(),
      ),
    );
  }
}

