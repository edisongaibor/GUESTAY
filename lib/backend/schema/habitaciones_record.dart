import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'habitaciones_record.g.dart';

abstract class HabitacionesRecord
    implements Built<HabitacionesRecord, HabitacionesRecordBuilder> {
  static Serializer<HabitacionesRecord> get serializer =>
      _$habitacionesRecordSerializer;

  String? get nombre;

  bool? get estado;

  double? get costo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HabitacionesRecordBuilder builder) => builder
    ..nombre = ''
    ..estado = false
    ..costo = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('habitaciones');

  static Stream<HabitacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HabitacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HabitacionesRecord._();
  factory HabitacionesRecord(
          [void Function(HabitacionesRecordBuilder) updates]) =
      _$HabitacionesRecord;

  static HabitacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHabitacionesRecordData({
  String? nombre,
  bool? estado,
  double? costo,
}) {
  final firestoreData = serializers.toFirestore(
    HabitacionesRecord.serializer,
    HabitacionesRecord(
      (h) => h
        ..nombre = nombre
        ..estado = estado
        ..costo = costo,
    ),
  );

  return firestoreData;
}
