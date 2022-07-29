import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'list_view_record.g.dart';

abstract class ListViewRecord
    implements Built<ListViewRecord, ListViewRecordBuilder> {
  static Serializer<ListViewRecord> get serializer =>
      _$listViewRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  DateTime get dateTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ListViewRecordBuilder builder) => builder
    ..title = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListView');

  static Stream<ListViewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ListViewRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ListViewRecord._();
  factory ListViewRecord([void Function(ListViewRecordBuilder) updates]) =
      _$ListViewRecord;

  static ListViewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createListViewRecordData({
  String title,
  String description,
  DateTime dateTime,
}) =>
    serializers.toFirestore(
        ListViewRecord.serializer,
        ListViewRecord((l) => l
          ..title = title
          ..description = description
          ..dateTime = dateTime));
