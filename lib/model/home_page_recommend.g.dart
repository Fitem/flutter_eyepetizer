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
    json['adExist'] as bool?,
  );
}

Map<String, dynamic> _$HomePageRecommendToJson(HomePageRecommend instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'adExist': instance.adExist,
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
    json['id'] as int?,
    json['type'] as String?,
    json['text'] as String?,
    json['actionUrl'] as String?,
    json['rightText'] as String?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'dataType': instance.dataType,
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'actionUrl': instance.actionUrl,
      'rightText': instance.rightText,
    };
