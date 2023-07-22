import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../meet/meet_model.dart';
import '../provider/riverpod/model/my_user.dart';
import 'file_info.dart';

part 'resource_category.freezed.dart';
part 'resource_category.g.dart';


//资源分类
@freezed
class ResourceCategory with _$ResourceCategory {
  const ResourceCategory._();

  const factory ResourceCategory({
      @JsonKey(name: 'description') @Default('')  String description,
      @JsonKey(name: 'id') @Default(0)  int id,
      @JsonKey(name: 'logo') @Default('')  String logo,
      @JsonKey(name: 'name') @Default('')  String name,
      @JsonKey(name: 'type')  dynamic type,
    }) = _ResourceCategory;
  
  factory ResourceCategory.fromJson(Map<String, dynamic> json) => _$ResourceCategoryFromJson(json);

}




extension ResourceEx on Resource {
  bool get hasImages => images.isNotEmpty;
  int get imageSize => images.length;
  FileInfo get firstImage => images.first;
  String get firstImageUrl => images.first.url;
}

//资源
@freezed
class Resource with _$Resource {
  const Resource._();

  const factory Resource({
    @JsonKey(name: 'authority') @Default(0)  int authority,
    @JsonKey(name: 'clickCount') @Default(0)  int clickcount,
    @JsonKey(name: 'content') @Default('')  String content,
    @JsonKey(name: 'createDate') @Default('')  String createdate,
    @JsonKey(name: 'description') @Default('')  String description,
    @JsonKey(name: 'id') @Default(0)  int id,
    @JsonKey(name: 'label') @Default('')  String label,
    @JsonKey(name: 'links') @Default('')  String links,
    @JsonKey(name: 'thumbnailImage') @Default('')  String thumbnailimage,
    @JsonKey(name: 'title') @Default('')  String title,
    @JsonKey(name: 'type') @Default('')  String type,
    @JsonKey(name:'category') @Default(ResourceCategory()) ResourceCategory category,
    @JsonKey(name: 'user') required MyUser user,
    @JsonKey(name: 'mianji') MeetModel? meetModel,
    @JsonKey(name:'images') @Default(IListConst([])) IList<FileInfo> images
  }) = _Resource;

  factory Resource.fromJson(dynamic json) => _$ResourceFromJson(json);

}

