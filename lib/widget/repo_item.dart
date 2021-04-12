
import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/model/home_page_recommend.dart';

class RepoItem extends StatefulWidget {
  RepoItem(this.item) : super(key: ValueKey(item.id));

  final ItemList item;

  @override
  _RepoItemState createState() => _RepoItemState();
}

class _RepoItemState extends State<RepoItem> {
  @override
  Widget build(BuildContext context) {
    var subtitle;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Material(
        color: Colors.white,
        shape: BorderDirectional(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: .5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                dense: true,
                title: Text(
                  widget.item.data?.header?.title == null ? "null" : widget.item.data!.header!.title!,
                  textScaleFactor: .9,
                ),
                subtitle: subtitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
