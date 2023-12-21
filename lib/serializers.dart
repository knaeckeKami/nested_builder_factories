import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value_nested_list_bug/built_value_nested_list_bug.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';


final SerializersBuilder _serializersBuilder = (_$serializers.toBuilder())
  ..addPlugin(StandardJsonPlugin());

@SerializersFor([NestedList])
final Serializers serializers = _serializersBuilder.build();