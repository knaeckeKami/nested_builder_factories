
// built value class

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_nested_list_bug/serializers.dart';

part 'built_value_nested_list_bug.g.dart';

abstract class NestedList implements Built<NestedList, NestedListBuilder> {

  BuiltList<BuiltList<int>> get nestedList;

  static Serializer<NestedList> get serializer => _$nestedListSerializer;

  NestedList._();
  factory NestedList([void Function(NestedListBuilder) updates]) = _$NestedList;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(NestedList.serializer, this) as Map<String, dynamic>;
  }

  static NestedList? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(NestedList.serializer, json);
  }
}
