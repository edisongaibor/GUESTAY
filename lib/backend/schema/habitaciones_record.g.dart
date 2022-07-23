// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habitaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HabitacionesRecord> _$habitacionesRecordSerializer =
    new _$HabitacionesRecordSerializer();

class _$HabitacionesRecordSerializer
    implements StructuredSerializer<HabitacionesRecord> {
  @override
  final Iterable<Type> types = const [HabitacionesRecord, _$HabitacionesRecord];
  @override
  final String wireName = 'HabitacionesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HabitacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.costo;
    if (value != null) {
      result
        ..add('costo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  HabitacionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HabitacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'costo':
          result.costo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$HabitacionesRecord extends HabitacionesRecord {
  @override
  final String? nombre;
  @override
  final bool? estado;
  @override
  final double? costo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HabitacionesRecord(
          [void Function(HabitacionesRecordBuilder)? updates]) =>
      (new HabitacionesRecordBuilder()..update(updates)).build();

  _$HabitacionesRecord._({this.nombre, this.estado, this.costo, this.ffRef})
      : super._();

  @override
  HabitacionesRecord rebuild(
          void Function(HabitacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HabitacionesRecordBuilder toBuilder() =>
      new HabitacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HabitacionesRecord &&
        nombre == other.nombre &&
        estado == other.estado &&
        costo == other.costo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nombre.hashCode), estado.hashCode), costo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HabitacionesRecord')
          ..add('nombre', nombre)
          ..add('estado', estado)
          ..add('costo', costo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HabitacionesRecordBuilder
    implements Builder<HabitacionesRecord, HabitacionesRecordBuilder> {
  _$HabitacionesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  bool? _estado;
  bool? get estado => _$this._estado;
  set estado(bool? estado) => _$this._estado = estado;

  double? _costo;
  double? get costo => _$this._costo;
  set costo(double? costo) => _$this._costo = costo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HabitacionesRecordBuilder() {
    HabitacionesRecord._initializeBuilder(this);
  }

  HabitacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _estado = $v.estado;
      _costo = $v.costo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HabitacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HabitacionesRecord;
  }

  @override
  void update(void Function(HabitacionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HabitacionesRecord build() {
    final _$result = _$v ??
        new _$HabitacionesRecord._(
            nombre: nombre, estado: estado, costo: costo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
