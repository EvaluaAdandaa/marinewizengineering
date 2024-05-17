import '../database.dart';

class SaasMndTable extends SupabaseTable<SaasMndRow> {
  @override
  String get tableName => 'saas_mnd';

  @override
  SaasMndRow createRow(Map<String, dynamic> data) => SaasMndRow(data);
}

class SaasMndRow extends SupabaseDataRow {
  SaasMndRow(super.data);

  @override
  SupabaseTable get table => SaasMndTable();

  int get saasMndid => getField<int>('saas_mndid')!;
  set saasMndid(int value) => setField<int>('saas_mndid', value);

  String? get codmoneda => getField<String>('codmoneda');
  set codmoneda(String? value) => setField<String>('codmoneda', value);

  int get codmonedanum => getField<int>('codmonedanum')!;
  set codmonedanum(int value) => setField<int>('codmonedanum', value);

  String? get nommoneda => getField<String>('nommoneda');
  set nommoneda(String? value) => setField<String>('nommoneda', value);

  String? get simbolomoneda => getField<String>('simbolomoneda');
  set simbolomoneda(String? value) => setField<String>('simbolomoneda', value);

  int? get activo => getField<int>('activo');
  set activo(int? value) => setField<int>('activo', value);
}
