// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReservasRecord> _$reservasRecordSerializer =
    new _$ReservasRecordSerializer();

class _$ReservasRecordSerializer
    implements StructuredSerializer<ReservasRecord> {
  @override
  final Iterable<Type> types = const [ReservasRecord, _$ReservasRecord];
  @override
  final String wireName = 'ReservasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReservasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.costo;
    if (value != null) {
      result
        ..add('costo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.numPersonas;
    if (value != null) {
      result
        ..add('num_personas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fechaSalida;
    if (value != null) {
      result
        ..add('fecha_salida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fechaIngreso;
    if (value != null) {
      result
        ..add('fecha_ingreso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ReservasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReservasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'costo':
          result.costo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'num_personas':
          result.numPersonas = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fecha_salida':
          result.fechaSalida = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'fecha_ingreso':
          result.fechaIngreso = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ReservasRecord extends ReservasRecord {
  @override
  final double? costo;
  @override
  final int? numPersonas;
  @override
  final DateTime? fechaSalida;
  @override
  final DateTime? fechaIngreso;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReservasRecord([void Function(ReservasRecordBuilder)? updates]) =>
      (new ReservasRecordBuilder()..update(updates)).build();

  _$ReservasRecord._(
      {this.costo,
      this.numPersonas,
      this.fechaSalida,
      this.fechaIngreso,
      this.ffRef})
      : super._();

  @override
  ReservasRecord rebuild(void Function(ReservasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservasRecordBuilder toBuilder() =>
      new ReservasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservasRecord &&
        costo == other.costo &&
        numPersonas == other.numPersonas &&
        fechaSalida == other.fechaSalida &&
        fechaIngreso == other.fechaIngreso &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, costo.hashCode), numPersonas.hashCode),
                fechaSalida.hashCode),
            fechaIngreso.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReservasRecord')
          ..add('costo', costo)
          ..add('numPersonas', numPersonas)
          ..add('fechaSalida', fechaSalida)
          ..add('fechaIngreso', fechaIngreso)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReservasRecordBuilder
    implements Builder<ReservasRecord, ReservasRecordBuilder> {
  _$ReservasRecord? _$v;

  double? _costo;
  double? get costo => _$this._costo;
  set costo(double? costo) => _$this._costo = costo;

  int? _numPersonas;
  int? get numPersonas => _$this._numPersonas;
  set numPersonas(int? numPersonas) => _$this._numPersonas = numPersonas;

  DateTime? _fechaSalida;
  DateTime? get fechaSalida => _$this._fechaSalida;
  set fechaSalida(DateTime? fechaSalida) => _$this._fechaSalida = fechaSalida;

  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _$this._fechaIngreso;
  set fechaIngreso(DateTime? fechaIngreso) =>
      _$this._fechaIngreso = fechaIngreso;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReservasRecordBuilder() {
    ReservasRecord._initializeBuilder(this);
  }

  ReservasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _costo = $v.costo;
      _numPersonas = $v.numPersonas;
      _fechaSalida = $v.fechaSalida;
      _fechaIngreso = $v.fechaIngreso;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservasRecord;
  }

  @override
  void update(void Function(ReservasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReservasRecord build() {
    final _$result = _$v ??
        new _$ReservasRecord._(
            costo: costo,
            numPersonas: numPersonas,
            fechaSalida: fechaSalida,
            fechaIngreso: fechaIngreso,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
