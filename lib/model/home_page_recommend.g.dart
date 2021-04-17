// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_recommend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageRecommend _$HomePageRecommendFromJson(Map<String, dynamic> json) {
  return HomePageRecommend(
    (json['itemList'] as List<dynamic>?)
        ?.map((e) => ItemList.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['count'] as int?,
    json['total'] as int?,
    json['nextPageUrl'] as String?,
  );
}

Map<String, dynamic> _$HomePageRecommendToJson(HomePageRecommend instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
    };

ItemList _$ItemListFromJson(Map<String, dynamic> json) {
  return ItemList(
    json['type'] as String?,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['id'] as int?,
    json['adIndex'] as int?,
  );
}

Map<String, dynamic> _$ItemListToJson(ItemList instance) => <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['dataType'] as String?,
    json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
    json['text'] as String?,
    json['type'] as String?,
    json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>),
    json['library'] as String?,
    json['category'] as String?,
    json['title'] as String?,
    json['icon'] as String?,
    json['description'] as String?,
    json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    json['rightText'] as String?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'dataType': instance.dataType,
      'header': instance.header,
      'content': instance.content,
      'text': instance.text,
      'type': instance.type,
      'cover': instance.cover,
      'library': instance.library,
      'category': instance.category,
      'title': instance.title,
      'icon': instance.icon,
      'description': instance.description,
      'follow': instance.follow,
      'rightText': instance.rightText,
    };

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
    json['id'] as int?,
    json['title'] as String?,
    json['textAlign'] as String?,
    json['actionUrl'] as String?,
    json['icon'] as String?,
    json['iconType'] as String?,
    json['description'] as String?,
    json['time'] as int?,
  );
}

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'textAlign': instance.textAlign,
      'actionUrl': instance.actionUrl,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'description': instance.description,
      'time': instance.time,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    json['type'] as String?,
    json['data'] == null
        ? null
        : ItemData.fromJson(json['data'] as Map<String, dynamic>),
    json['id'] as int?,
    json['adIndex'] as int?,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return ItemData(
    json['dataType'] as String?,
    json['id'] as int?,
    json['title'] as String?,
    json['description'] as String?,
    json['library'] as String?,
    (json['tags'] as List<dynamic>?)
        ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
    json['resourceType'] as String?,
    json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>),
    json['category'] as String?,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>),
    json['playUrl'] as String?,
    json['duration'] as int?,
    json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>),
    json['releaseTime'] as int?,
    (json['playInfo'] as List<dynamic>?)
        ?.map((e) => PlayInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['type'] as String?,
    json['remark'] as String?,
    json['searchWeight'] as int?,
    json['videoPosterBean'] == null
        ? null
        : VideoPosterBean.fromJson(
            json['videoPosterBean'] as Map<String, dynamic>),
    json['idx'] as int?,
    json['date'] as int?,
    json['descriptionEditor'] as String?,
  );
}

Map<String, dynamic> _$ItemDataToJson(ItemData instance) => <String, dynamic>{
      'dataType': instance.dataType,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'type': instance.type,
      'remark': instance.remark,
      'searchWeight': instance.searchWeight,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'date': instance.date,
      'descriptionEditor': instance.descriptionEditor,
    };

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
    json['id'] as int?,
    json['name'] as String?,
    json['actionUrl'] as String?,
    json['desc'] as String?,
    json['bgPicture'] as String?,
    json['headerImage'] as String?,
    json['tagRecType'] as String?,
    json['communityIndex'] as int?,
  );
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'actionUrl': instance.actionUrl,
      'desc': instance.desc,
      'bgPicture': instance.bgPicture,
      'headerImage': instance.headerImage,
      'tagRecType': instance.tagRecType,
      'communityIndex': instance.communityIndex,
    };

Consumption _$ConsumptionFromJson(Map<String, dynamic> json) {
  return Consumption(
    json['collectionCount'] as int,
    json['shareCount'] as int,
    json['replyCount'] as int,
    json['realCollectionCount'] as int,
  );
}

Map<String, dynamic> _$ConsumptionToJson(Consumption instance) =>
    <String, dynamic>{
      'collectionCount': instance.collectionCount,
      'shareCount': instance.shareCount,
      'replyCount': instance.replyCount,
      'realCollectionCount': instance.realCollectionCount,
    };

Provider _$ProviderFromJson(Map<String, dynamic> json) {
  return Provider(
    json['name'] as String?,
    json['alias'] as String?,
    json['icon'] as String?,
  );
}

Map<String, dynamic> _$ProviderToJson(Provider instance) => <String, dynamic>{
      'name': instance.name,
      'alias': instance.alias,
      'icon': instance.icon,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    json['id'] as int?,
    json['icon'] as String?,
    json['name'] as String?,
    json['description'] as String?,
    json['link'] as String?,
    json['latestReleaseTime'] as int?,
    json['videoNum'] as int?,
    json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    json['shield'] == null
        ? null
        : Shield.fromJson(json['shield'] as Map<String, dynamic>),
    json['approvedNotReadyVideoCount'] as int?,
    json['ifPgc'] as bool?,
    json['recSort'] as int?,
    json['expert'] as bool?,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'latestReleaseTime': instance.latestReleaseTime,
      'videoNum': instance.videoNum,
      'follow': instance.follow,
      'shield': instance.shield,
      'approvedNotReadyVideoCount': instance.approvedNotReadyVideoCount,
      'ifPgc': instance.ifPgc,
      'recSort': instance.recSort,
      'expert': instance.expert,
    };

Follow _$FollowFromJson(Map<String, dynamic> json) {
  return Follow(
    json['itemType'] as String?,
    json['itemId'] as int?,
    json['followed'] as bool?,
  );
}

Map<String, dynamic> _$FollowToJson(Follow instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'followed': instance.followed,
    };

Shield _$ShieldFromJson(Map<String, dynamic> json) {
  return Shield(
    json['itemType'] as String?,
    json['itemId'] as int?,
    json['shielded'] as bool?,
  );
}

Map<String, dynamic> _$ShieldToJson(Shield instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'shielded': instance.shielded,
    };

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return Cover(
    json['feed'] as String?,
    json['detail'] as String?,
    json['blurred'] as String?,
    json['homepage'] as String?,
  );
}

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'feed': instance.feed,
      'detail': instance.detail,
      'blurred': instance.blurred,
      'homepage': instance.homepage,
    };

WebUrl _$WebUrlFromJson(Map<String, dynamic> json) {
  return WebUrl(
    json['raw'] as String?,
    json['forWeibo'] as String?,
  );
}

Map<String, dynamic> _$WebUrlToJson(WebUrl instance) => <String, dynamic>{
      'raw': instance.raw,
      'forWeibo': instance.forWeibo,
    };

PlayInfo _$PlayInfoFromJson(Map<String, dynamic> json) {
  return PlayInfo(
    json['height'] as int?,
    json['width'] as int?,
    (json['urlList'] as List<dynamic>?)
        ?.map((e) => UrlList.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['name'] as String?,
    json['type'] as String?,
    json['url'] as String?,
  );
}

Map<String, dynamic> _$PlayInfoToJson(PlayInfo instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'urlList': instance.urlList,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
    };

UrlList _$UrlListFromJson(Map<String, dynamic> json) {
  return UrlList(
    json['name'] as String?,
    json['url'] as String?,
    json['size'] as int?,
  );
}

Map<String, dynamic> _$UrlListToJson(UrlList instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'size': instance.size,
    };

VideoPosterBean _$VideoPosterBeanFromJson(Map<String, dynamic> json) {
  return VideoPosterBean(
    (json['scale'] as num?)?.toDouble(),
    json['url'] as String?,
    json['fileSizeStr'] as String?,
  );
}

Map<String, dynamic> _$VideoPosterBeanToJson(VideoPosterBean instance) =>
    <String, dynamic>{
      'scale': instance.scale,
      'url': instance.url,
      'fileSizeStr': instance.fileSizeStr,
    };
