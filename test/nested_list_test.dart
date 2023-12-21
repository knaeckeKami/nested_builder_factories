


import 'package:built_collection/built_collection.dart';
import 'package:built_value_nested_list_bug/built_value_nested_list_bug.dart';
import 'package:test/test.dart';

void main(){

  test('can serialize', () {

    final NestedList nestedList = NestedList((b) => b
      ..nestedList.add(BuiltList<int>.of([1,2,3]))
    );

    expect(nestedList.toJson(), {
      "nestedList": [
        [1,2,3],
      ]
    });

  });

}