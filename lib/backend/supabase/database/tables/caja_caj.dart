import '../database.dart';

class CajaCajTable extends SupabaseTable<CajaCajRow> {
  @override
  String get tableName => 'caja_caj';

  @override
  CajaCajRow createRow(Map<String, dynamic> data) => CajaCajRow(data);
}

class CajaCajRow extends SupabaseDataRow {
  CajaCajRow(super.data);

  @override
  SupabaseTable get table => CajaCajTable();

  int get cajaCajid => getField<int>('caja_cajid')!;
  set cajaCajid(int value) => setField<int>('caja_cajid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get codcaja => getField<String>('codcaja');
  set codcaja(String? value) => setField<String>('codcaja', value);

  String? get nomcaja => getField<String>('nomcaja');
  set nomcaja(String? value) => setField<String>('nomcaja', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);
}
