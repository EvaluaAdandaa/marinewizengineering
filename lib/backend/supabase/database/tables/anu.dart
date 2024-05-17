import '../database.dart';

class AnuTable extends SupabaseTable<AnuRow> {
  @override
  String get tableName => 'anu';

  @override
  AnuRow createRow(Map<String, dynamic> data) => AnuRow(data);
}

class AnuRow extends SupabaseDataRow {
  AnuRow(super.data);

  @override
  SupabaseTable get table => AnuTable();

  int get anuid => getField<int>('anuid')!;
  set anuid(int value) => setField<int>('anuid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  DateTime get fechaanulacion => getField<DateTime>('fechaanulacion')!;
  set fechaanulacion(DateTime value) =>
      setField<DateTime>('fechaanulacion', value);

  String? get detalle => getField<String>('detalle');
  set detalle(String? value) => setField<String>('detalle', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get tabla => getField<String>('tabla');
  set tabla(String? value) => setField<String>('tabla', value);

  int? get tablaid => getField<int>('tablaid');
  set tablaid(int? value) => setField<int>('tablaid', value);

  String? get tablanumdocumento => getField<String>('tablanumdocumento');
  set tablanumdocumento(String? value) =>
      setField<String>('tablanumdocumento', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);
}
