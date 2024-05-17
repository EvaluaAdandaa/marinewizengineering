import '../database.dart';

class VwMweOservicioTable extends SupabaseTable<VwMweOservicioRow> {
  @override
  String get tableName => 'vw_mwe_oservicio';

  @override
  VwMweOservicioRow createRow(Map<String, dynamic> data) =>
      VwMweOservicioRow(data);
}

class VwMweOservicioRow extends SupabaseDataRow {
  VwMweOservicioRow(super.data);

  @override
  SupabaseTable get table => VwMweOservicioTable();

  String? get numorden => getField<String>('numorden');
  set numorden(String? value) => setField<String>('numorden', value);

  DateTime? get fechaos => getField<DateTime>('fechaos');
  set fechaos(DateTime? value) => setField<DateTime>('fechaos', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  String? get referencia => getField<String>('referencia');
  set referencia(String? value) => setField<String>('referencia', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);
}
