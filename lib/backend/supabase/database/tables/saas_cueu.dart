import '../database.dart';

class SaasCueuTable extends SupabaseTable<SaasCueuRow> {
  @override
  String get tableName => 'saas_cueu';

  @override
  SaasCueuRow createRow(Map<String, dynamic> data) => SaasCueuRow(data);
}

class SaasCueuRow extends SupabaseDataRow {
  SaasCueuRow(super.data);

  @override
  SupabaseTable get table => SaasCueuTable();

  int get saasCueuid => getField<int>('saas_cueuid')!;
  set saasCueuid(int value) => setField<int>('saas_cueuid', value);

  int? get saasCueid => getField<int>('saas_cueid');
  set saasCueid(int? value) => setField<int>('saas_cueid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);
}
