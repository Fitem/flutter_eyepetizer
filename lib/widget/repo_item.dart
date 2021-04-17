import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/app_constants.dart';
import 'package:flutter_eyepetizer/common/non_safety.dart';
import 'package:flutter_eyepetizer/common/toast_utils.dart';
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
    switch (getItemViewType(widget.item)) {
      case Constants.TEXT_CARD_HEADER7:
        return TextCardHeader7ViewHolder(widget.item);
      case Constants.TEXT_CARD_HEADER5:
        return TextCardHeader5ViewHolder(widget.item);
      case Constants.FOLLOW_CARD:
        return ItemCardFollowCardViewHolder(widget.item);
      case Constants.VIDEO_SMALL_CARD:
        return VideoSmallCardViewHolder(widget.item);
      case Constants.TEXT_CARD_FOOTER3:
        return TextCardFooter3ViewHolder(widget.item);
      case Constants.TAG_BRIEFCARD:
        return TagBriefCardViewHolder(widget.item);
      case Constants.TEXT_CARD_FOOTER2:
        return TextCardFooter2ViewHolder(widget.item);
      case Constants.TOPIC_BRIEFCARD:
        return TopicBriefCardViewHolder(widget.item);
    }
    return EmptyViewHolder();
  }
}

class TopicBriefCardViewHolder extends StatefulWidget {
  TopicBriefCardViewHolder(this.item) : super();
  final ItemList item;

  @override
  _TopicBriefCardViewHolderState createState() =>
      _TopicBriefCardViewHolderState();
}

class _TopicBriefCardViewHolderState extends State<TopicBriefCardViewHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, top: 5, right: 14, bottom: 5),
      child: Row(
        children: [
          ClipRRect(
            child: Image.network(
              checkNullForString(widget.item.data?.icon),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          Expanded(child: Container(
            margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(
                        checkNullForString(widget.item.data?.title),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),),
                    ],
                  ),
                  Text(
                    checkNullForString(widget.item.data?.description),
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              )
          )),
        ],
      ),
    );
  }
}

class TextCardFooter2ViewHolder extends StatefulWidget {
  TextCardFooter2ViewHolder(this.item) : super();
  final ItemList item;

  @override
  _TextCardFooter2ViewHolderState createState() =>
      _TextCardFooter2ViewHolderState();
}

class _TextCardFooter2ViewHolderState extends State<TextCardFooter2ViewHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, top: 10, right: 14, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            checkNullForString(widget.item.data?.text),
            style: TextStyle(fontSize: 14.0),
          ),
          Icon(
            Icons.arrow_right,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class TagBriefCardViewHolder extends StatefulWidget {
  TagBriefCardViewHolder(this.item) : super();
  final ItemList item;

  @override
  _TagBriefCardViewHolderState createState() => _TagBriefCardViewHolderState();
}

class _TagBriefCardViewHolderState extends State<TagBriefCardViewHolder> {
  @override
  Widget build(BuildContext context) {
    var url = checkNullForString(widget.item.data?.icon);
    var description = checkNullForString(widget.item.data?.description);
    var title = checkNullForString(widget.item.data?.title);
    return Container(
      padding: EdgeInsets.only(left: 14, top: 5, right: 14, bottom: 5),
      child: Row(
        children: [
          ClipRRect(
            child: Image.network(
              url,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(2.0),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )),
          OutlinedButton.icon(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(1, 1)),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(4, 2, 4, 2))),
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 10,
            ),
            label: Text(
              "关注",
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}

class TextCardFooter3ViewHolder extends StatefulWidget {
  TextCardFooter3ViewHolder(this.item) : super();
  final ItemList item;

  @override
  _TextCardFooter3ViewHolderState createState() =>
      _TextCardFooter3ViewHolderState();
}

class _TextCardFooter3ViewHolderState extends State<TextCardFooter3ViewHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ElevatedButton(
            child: Text(
              "刷新推荐",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(1, 1)),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(8, 4, 8, 4))),
          ),
          Positioned(
            right: 12.0,
            child: TextButton(
              child: Text(checkNullForString(widget.item.data?.text)),
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(1, 1)),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(4, 2, 4, 2)),
                textStyle: MaterialStateProperty.resolveWith(
                    (states) => TextStyle(fontSize: 12)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VideoSmallCardViewHolder extends StatefulWidget {
  VideoSmallCardViewHolder(this.item) : super();
  final ItemList item;

  @override
  _VideoSmallCardViewHolderState createState() =>
      _VideoSmallCardViewHolderState();
}

class _VideoSmallCardViewHolderState extends State<VideoSmallCardViewHolder> {
  @override
  Widget build(BuildContext context) {
    String title = checkNullForString(widget.item.data?.title);
    String library = checkNullForString(widget.item.data?.library);
    String category = checkNullForString(widget.item.data?.category);
    String feed = checkNullForString(widget.item.data?.cover?.feed);
    String description =
        library == "DAILY" ? "#${category} / 开眼精选" : "#${category}";
    return Container(
      padding: EdgeInsets.only(left: 12, top: 0, right: 12, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 173.0,
              height: 100.0,
              child: Image.network(feed, fit: BoxFit.cover)),
          Expanded(
            child: SizedBox(
              height: 100.0,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          description,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                        Icon(Icons.card_giftcard),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextCardHeader5ViewHolder extends StatefulWidget {
  TextCardHeader5ViewHolder(this.item) : super();

  final ItemList item;

  @override
  _TextCardHeader5ViewHolderState createState() =>
      _TextCardHeader5ViewHolderState();
}

class _TextCardHeader5ViewHolderState extends State<TextCardHeader5ViewHolder> {
  @override
  Widget build(BuildContext context) {
    bool hasFollow = widget.item.data?.follow != null;
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(checkNullForString(widget.item.data?.text)),
                Icon(
                  Icons.arrow_right,
                  size: 16,
                )
              ],
            ),
          ),
          if (hasFollow)
            OutlinedButton.icon(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(1, 1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(4, 2, 4, 2))),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 10,
              ),
              label: Text(
                "关注",
                style: TextStyle(fontSize: 12),
              ),
            ),
        ],
      ),
      padding: EdgeInsets.only(left: 14, top: 10, right: 14, bottom: 10),
    );
  }
}

class TextCardHeader7ViewHolder extends StatefulWidget {
  TextCardHeader7ViewHolder(this.item) : super();

  final ItemList item;

  @override
  _TextCardHeader7ViewHolderState createState() =>
      _TextCardHeader7ViewHolderState();
}

class _TextCardHeader7ViewHolderState extends State<TextCardHeader7ViewHolder> {
  @override
  Widget build(BuildContext context) {
    String title = checkNullForString(widget.item.data?.text);
    String rightText = checkNullForString(widget.item.data?.rightText);
    return Container(
      padding: EdgeInsets.only(left: 14, top: 10, right: 14),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.only(right: 5),
            child: TextButton(
              onPressed: () {
                showToast(title);
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(1, 1)),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 0, 0, 0)),
              ),
              child: Row(
                children: [
                  Text(
                    rightText,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCardFollowCardViewHolder extends StatefulWidget {
  ItemCardFollowCardViewHolder(this.item) : super();
  final ItemList item;

  @override
  _ItemCardFollowCardViewHolderState createState() =>
      _ItemCardFollowCardViewHolderState();
}

class _ItemCardFollowCardViewHolderState
    extends State<ItemCardFollowCardViewHolder> {
  @override
  Widget build(BuildContext context) {
    return TappableTravelDestinationItem(widget.item);
  }
}

class EmptyViewHolder extends StatefulWidget {
  @override
  _EmptyViewHolderState createState() => _EmptyViewHolderState();
}

class _EmptyViewHolderState extends State<EmptyViewHolder> {
  @override
  Widget build(BuildContext context) {
    return Text("暂不支持的类型");
  }
}

class TappableTravelDestinationItem extends StatelessWidget {
  TappableTravelDestinationItem(this.item) : super();

  final ItemList item;

  @override
  Widget build(BuildContext context) {
    String feed = checkNullForString(item.data?.content?.data?.cover?.feed);
    String avatarUrl = checkNullForString(item.data?.header?.icon);
    String title = checkNullForString(item.data?.header?.title);
    String desc = checkNullForString(item.data?.header?.description);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 8, right: 14, bottom: 8),
          child: Column(
            children: [
              Card(
                // This ensures that the Card's children (including the ink splash) are clipped correctly.
                clipBehavior: Clip.antiAlias,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(feed),
                    ]),
                elevation: 0.0,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      child: Image.network(
                        avatarUrl,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Text(
                            desc,
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.card_giftcard)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

int getItemViewType(ItemList item) {
  return item.type == "textCard"
      ? getTextCardType(item.data?.type)
      : getItemCardType(item.type, item.data?.dataType);
}

int getTextCardType(String? type) {
  if ("header4" == type) {
    return Constants.TEXT_CARD_HEADER4;
  } else if ("header5" == type) {
    return Constants.TEXT_CARD_HEADER5;
  } else if ("header6" == type) {
    return Constants.TEXT_CARD_HEADER6;
  } else if ("header7" == type) {
    return Constants.TEXT_CARD_HEADER7;
  } else if ("header8" == type) {
    return Constants.TEXT_CARD_HEADER8;
  } else if ("footer2" == type) {
    return Constants.TEXT_CARD_FOOTER2;
  } else if ("footer3" == type) {
    return Constants.TEXT_CARD_FOOTER3;
  } else {
    return Constants.UNKNOWN;
  }
}

int getItemCardType(String? type, String? dataType) {
  if (type == "horizontalScrollCard" && dataType == "HorizontalScrollCard") {
    return Constants.HORIZONTAL_SCROLL_CARD;
  } else if (type == "specialSquareCardCollection" &&
      dataType == "ItemCollection") {
    return Constants.SPECIAL_SQUARE_CARD_COLLECTION;
  } else if (type == "columnCardList" && dataType == "ItemCollection") {
    return Constants.COLUMN_CARD_LIST;
  } else if (type == "banner" && dataType == "Banner") {
    return Constants.BANNER;
  } else if (type == "banner" && dataType == "Banner3") {
    return Constants.BANNER3;
  } else if (type == "videoSmallCard" && dataType == "VideoBeanForClient") {
    return Constants.VIDEO_SMALL_CARD;
  } else if (type == "briefCard") {
    if (dataType == "TagBriefCard") {
      return Constants.TAG_BRIEFCARD;
    } else if (dataType == "TopicBriefCard") {
      return Constants.TOPIC_BRIEFCARD;
    }
    return Constants.UNKNOWN;
  } else if (type == "followCard" && dataType == "FollowCard") {
    return Constants.FOLLOW_CARD;
  } else if (type == "informationCard" && dataType == "InformationCard") {
    return Constants.INFORMATION_CARD;
  } else if (type == "ugcSelectedCardCollection" &&
      dataType == "ItemCollection") {
    return Constants.UGC_SELECTED_CARD_COLLECTION;
  } else if (type == "autoPlayVideoAd" && dataType == "AutoPlayVideoAdDetail") {
    return Constants.AUTO_PLAY_VIDEO_AD;
  } else {
    return Constants.UNKNOWN;
  }
}
