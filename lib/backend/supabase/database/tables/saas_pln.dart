import '../database.dart';

class SaasPlnTable extends SupabaseTable<SaasPlnRow> {
  @override
  String get tableName => 'saas_pln';

  @override
  SaasPlnRow createRow(Map<String, dynamic> data) => SaasPlnRow(data);
}

class SaasPlnRow extends SupabaseDataRow {
  SaasPlnRow(super.data);

  @override
  SupabaseTable get table => SaasPlnTable();

  int get saasPlnid => getField<int>('saas_plnid')!;
  set saasPlnid(int value) => setField<int>('saas_plnid', value);

  String? get idplan => getField<String>('idplan');
  set idplan(String? value) => setField<String>('idplan', value);

  String? get nomplan => getField<String>('nomplan');
  set nomplan(String? value) => setField<String>('nomplan', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
