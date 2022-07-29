// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListViewRecord> _$listViewRecordSerializer =
    new _$ListViewRecordSerializer();

class _$ListViewRecordSerializer
    implements StructuredSerializer<ListViewRecord> {
  @override
  final Iterable<Type> types = const [ListViewRecord, _$ListViewRecord];
  @override
  final String wireName = 'ListViewRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ListViewRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ListViewRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListViewRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ListViewRecord extends ListViewRecord {
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dateTime;
  @override
  final DocumentReference<Object> reference;

  factory _$ListViewRecord([void Function(ListViewRecordBuilder) updates]) =>
      (new ListViewRecordBuilder()..update(updates)).build();

  _$ListViewRecord._(
      {this.title, this.description, this.dateTime, this.reference})
      : super._();

  @override
  ListViewRecord rebuild(void Function(ListViewRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListViewRecordBuilder toBuilder() =>
      new ListViewRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListViewRecord &&
        title == other.title &&
        description == other.description &&
        dateTime == other.dateTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), description.hashCode),
            dateTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListViewRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('dateTime', dateTime)
          ..add('reference', reference))
        .toString();
  }
}

class ListViewRecordBuilder
    implements Builder<ListViewRecord, ListViewRecordBuilder> {
  _$ListViewRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ListViewRecordBuilder() {
    ListViewRecord._initializeBuilder(this);
  }

  ListViewRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _dateTime = $v.dateTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListViewRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListViewRecord;
  }

  @override
  void update(void Function(ListViewRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListViewRecord build() {
    final _$result = _$v ??
        new _$ListViewRecord._(
            title: title,
            description: description,
            dateTime: dateTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
