import 'package:json_annotation/json_annotation.dart'; 
  
part 'profile.g.dart';


@JsonSerializable()
  class Profile extends Object {

  int theme;
  String locale;

  Profile();

  factory Profile.fromJson(Map<String, dynamic> srcJson) => _$ProfileFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

}

  
