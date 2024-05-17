import '../database.dart';

class LiqTable extends SupabaseTable<LiqRow> {
  @override
  String get tableName => 'liq';

  @override
  LiqRow createRow(Map<String, dynamic> data) => LiqRow(data);
}

class LiqRow extends SupabaseDataRow {
  LiqRow(super.data);

  @override
  SupabaseTable get table => LiqTable();

  int get liqid => getField<int>('liqid')!;
  set liqid(int value) => setField<int>('liqid', value);

  int get codpoliticaliq => getField<int>('codpoliticaliq')!;
  set codpoliticaliq(int value) => setField<int>('codpoliticaliq', value);

  String? get nompolitica => getField<String>('nompolitica');
  set nompolitica(String? value) => setField<String>('nompolitica', value);

  double? get valornum1 => getField<double>('valornum1');
  set valornum1(double? value) => setField<double>('valornum1', value);

  double? get valornum2 => getField<double>('valornum2');
  set valornum2(double? value) => setField<double>('valornum2', value);
}
