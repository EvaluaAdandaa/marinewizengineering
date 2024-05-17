import '../database.dart';

class VSerOservicioTable extends SupabaseTable<VSerOservicioRow> {
  @override
  String get tableName => 'v_ser_oservicio';

  @override
  VSerOservicioRow createRow(Map<String, dynamic> data) =>
      VSerOservicioRow(data);
}

class VSerOservicioRow extends SupabaseDataRow {
  VSerOservicioRow(super.data);

  @override
  SupabaseTable get table => VSerOservicioTable();

  String? get numorden => getField<String>('numorden');
  set numorden(String? value) => setField<String>('numorden', value);

  DateTime? get fechaos => getField<DateTime>('fechaos');
  set fechaos(DateTime? value) => setField<DateTime>('fechaos', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get ciudadtercero => getField<String>('ciudadtercero');
  set ciudadtercero(String? value) => setField<String>('ciudadtercero', value);

  String? get nombote => getField<String>('nombote');
  set nombote(String? value) => setField<String>('nombote', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);
}
