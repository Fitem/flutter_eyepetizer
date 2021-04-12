import 'package:flutter/cupertino.dart';
import 'package:flutter_eyepetizer/common/git_api.dart';
import 'package:flutter_eyepetizer/flukit/infinite_listview.dart';
import 'package:flutter_eyepetizer/model/home_page_recommend.dart';
import 'package:flutter_eyepetizer/widget/repo_item.dart';

class RecommendPage extends StatefulWidget {
  @override
  RecommendPageState createState() => RecommendPageState();

}

class RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return InfiniteListView<ItemList>(
        onRetrieveData: (int page, List<ItemList> items, bool refresh) async {
          var data = await Git(context).homePageRecommend();
          var size = 0;
          if (data.itemList != null) {
            items.addAll(data.itemList!);
            size = data.itemList!.length;
          }
          return size > 0 && size % 20 == 0;
        }, itemBuilder: (List list, int index, BuildContext ctx) {
      // 项目信息列表项
      return RepoItem(list[index]);
    });
  }

}