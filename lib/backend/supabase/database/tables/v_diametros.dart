import '../database.dart';

class VDiametrosTable extends SupabaseTable<VDiametrosRow> {
  @override
  String get tableName => 'v_diametros';

  @override
  VDiametrosRow createRow(Map<String, dynamic> data) => VDiametrosRow(data);
}

class VDiametrosRow extends SupabaseDataRow {
  VDiametrosRow(super.data);

  @override
  SupabaseTable get table => VDiametrosTable();

  int? get codpoliticaliq => getField<int>('codpoliticaliq');
  set codpoliticaliq(int? value) => setField<int>('codpoliticaliq', value);

  double? get diametro => getField<double>('diametro');
  set diametro(double? value) => setField<double>('diametro', value);
}
