import '../database.dart';

class SaasPlndTable extends SupabaseTable<SaasPlndRow> {
  @override
  String get tableName => 'saas_plnd';

  @override
  SaasPlndRow createRow(Map<String, dynamic> data) => SaasPlndRow(data);
}

class SaasPlndRow extends SupabaseDataRow {
  SaasPlndRow(super.data);

  @override
  SupabaseTable get table => SaasPlndTable();

  int get saasPlndid => getField<int>('saas_plndid')!;
  set saasPlndid(int value) => setField<int>('saas_plndid', value);

  int get saasPlnid => getField<int>('saas_plnid')!;
  set saasPlnid(int value) => setField<int>('saas_plnid', value);

  int get periodomes => getField<int>('periodomes')!;
  set periodomes(int value) => setField<int>('periodomes', value);

  String? get nomperiodo => getField<String>('nomperiodo');
  set nomperiodo(String? value) => setField<String>('nomperiodo', value);

  int get saasMndid => getField<int>('saas_mndid')!;
  set saasMndid(int value) => setField<int>('saas_mndid', value);

  double get vlrservicio => getField<double>('vlrservicio')!;
  set vlrservicio(double value) => setField<double>('vlrservicio', value);
}
