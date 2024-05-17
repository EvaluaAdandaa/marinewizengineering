import '../database.dart';

class VLiqpTable extends SupabaseTable<VLiqpRow> {
  @override
  String get tableName => 'v_liqp';

  @override
  VLiqpRow createRow(Map<String, dynamic> data) => VLiqpRow(data);
}

class VLiqpRow extends SupabaseDataRow {
  VLiqpRow(super.data);

  @override
  SupabaseTable get table => VLiqpTable();

  int? get liqpid => getField<int>('liqpid');
  set liqpid(int? value) => setField<int>('liqpid', value);

  int? get codpoliticaliq => getField<int>('codpoliticaliq');
  set codpoliticaliq(int? value) => setField<int>('codpoliticaliq', value);

  String? get propiedad => getField<String>('propiedad');
  set propiedad(String? value) => setField<String>('propiedad', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);
}
