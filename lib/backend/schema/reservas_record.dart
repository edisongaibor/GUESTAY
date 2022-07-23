import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservas_record.g.dart';

abstract class ReservasRecord
    implements Built<ReservasRecord, ReservasRecordBuilder> {
  static Serializer<ReservasRecord> get serializer =>
      _$reservasRecordSerializer;

  double? get costo;

  @BuiltValueField(wireName: 'num_personas')
  int? get numPersonas;

  @BuiltValueField(wireName: 'fecha_salida')
  DateTime? get fechaSalida;

  @BuiltValueField(wireName: 'fecha_ingreso')
  DateTime? get fechaIngreso;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReservasRecordBuilder builder) => builder
    ..costo = 0.0
    ..numPersonas = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservas');

  static Stream<ReservasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReservasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReservasRecord._();
  factory ReservasRecord([void Function(ReservasRecordBuilder) updates]) =
      _$ReservasRecord;

  static ReservasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReservasRecordData({
  double? costo,
  int? numPersonas,
  DateTime? fechaSalida,
  DateTime? fechaIngreso,
}) {
  final firestoreData = serializers.toFirestore(
    ReservasRecord.serializer,
    ReservasRecord(
      (r) => r
        ..costo = costo
        ..numPersonas = numPersonas
        ..fechaSalida = fechaSalida
        ..fechaIngreso = fechaIngreso,
    ),
  );

  return firestoreData;
}
