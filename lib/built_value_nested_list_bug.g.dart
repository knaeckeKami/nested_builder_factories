// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_value_nested_list_bug.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NestedList> _$nestedListSerializer = new _$NestedListSerializer();

class _$NestedListSerializer implements StructuredSerializer<NestedList> {
  @override
  final Iterable<Type> types = const [NestedList, _$NestedList];
  @override
  final String wireName = 'NestedList';

  @override
  Iterable<Object?> serialize(Serializers serializers, NestedList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nestedList',
      serializers.serialize(object.nestedList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(int)])
          ])),
    ];

    return result;
  }

  @override
  NestedList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NestedListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nestedList':
          result.nestedList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(int)])
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NestedList extends NestedList {
  @override
  final BuiltList<BuiltList<int>> nestedList;

  factory _$NestedList([void Function(NestedListBuilder)? updates]) =>
      (new NestedListBuilder()..update(updates))._build();

  _$NestedList._({required this.nestedList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        nestedList, r'NestedList', 'nestedList');
  }

  @override
  NestedList rebuild(void Function(NestedListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedListBuilder toBuilder() => new NestedListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedList && nestedList == other.nestedList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nestedList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NestedList')
          ..add('nestedList', nestedList))
        .toString();
  }
}

class NestedListBuilder implements Builder<NestedList, NestedListBuilder> {
  _$NestedList? _$v;

  ListBuilder<BuiltList<int>>? _nestedList;
  ListBuilder<BuiltList<int>> get nestedList =>
      _$this._nestedList ??= new ListBuilder<BuiltList<int>>();
  set nestedList(ListBuilder<BuiltList<int>>? nestedList) =>
      _$this._nestedList = nestedList;

  NestedListBuilder();

  NestedListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nestedList = $v.nestedList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedList;
  }

  @override
  void update(void Function(NestedListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedList build() => _build();

  _$NestedList _build() {
    _$NestedList _$result;
    try {
      _$result = _$v ?? new _$NestedList._(nestedList: nestedList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nestedList';
        nestedList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
