import '../database.dart';

class VwMweCotizacionesTable extends SupabaseTable<VwMweCotizacionesRow> {
  @override
  String get tableName => 'vw_mwe_cotizaciones';

  @override
  VwMweCotizacionesRow createRow(Map<String, dynamic> data) =>
      VwMweCotizacionesRow(data);
}

class VwMweCotizacionesRow extends SupabaseDataRow {
  VwMweCotizacionesRow(super.data);

  @override
  SupabaseTable get table => VwMweCotizacionesTable();

  String? get numcotizacion => getField<String>('numcotizacion');
  set numcotizacion(String? value) => setField<String>('numcotizacion', value);

  DateTime? get fechacotizacion => getField<DateTime>('fechacotizacion');
  set fechacotizacion(DateTime? value) =>
      setField<DateTime>('fechacotizacion', value);

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

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);
}
