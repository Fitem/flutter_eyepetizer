import 'package:json_annotation/json_annotation.dart';

part 'home_page_recommend.g.dart';

@JsonSerializable()
class HomePageRecommend extends Object {
  @JsonKey(name: 'itemList')
  List<ItemList>? itemList;

  @JsonKey(name: 'count')
  int? count;

  @JsonKey(name: 'total')
  int? total;

  @JsonKey(name: 'nextPageUrl')
  String? nextPageUrl;

  @JsonKey(name: 'adExist')
  bool? adExist;

  HomePageRecommend(
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
  );

  factory HomePageRecommend.fromJson(Map<String, dynamic> srcJson) =>
      _$HomePageRecommendFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomePageRecommendToJson(this);
}

@JsonSerializable()
class ItemList extends Object {
  @JsonKey(name: 'type')
  String? type;

  @JsonKey(name: 'data')
  Data? data;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'adIndex')
  int? adIndex;

  ItemList(
    this.type,
    this.data,
    this.id,
    this.adIndex,
  );

  factory ItemList.fromJson(Map<String, dynamic> srcJson) =>
      _$ItemListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemListToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'dataType')
  String? dataType;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'type')
  String? type;

  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'actionUrl')
  String? actionUrl;

  @JsonKey(name: 'rightText')
  String? rightText;

  Data(
    this.dataType,
    this.id,
    this.type,
    this.text,
    this.actionUrl,
    this.rightText,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
