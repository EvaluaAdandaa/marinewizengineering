import '../database.dart';

class LiqtmTable extends SupabaseTable<LiqtmRow> {
  @override
  String get tableName => 'liqtm';

  @override
  LiqtmRow createRow(Map<String, dynamic> data) => LiqtmRow(data);
}

class LiqtmRow extends SupabaseDataRow {
  LiqtmRow(super.data);

  @override
  SupabaseTable get table => LiqtmTable();

  int get liqtmid => getField<int>('liqtmid')!;
  set liqtmid(int value) => setField<int>('liqtmid', value);

  int get codpoliticaliq => getField<int>('codpoliticaliq')!;
  set codpoliticaliq(int value) => setField<int>('codpoliticaliq', value);

  String? get campo => getField<String>('campo');
  set campo(String? value) => setField<String>('campo', value);

  double? get medida => getField<double>('medida');
  set medida(double? value) => setField<double>('medida', value);

  String? get umedida => getField<String>('umedida');
  set umedida(String? value) => setField<String>('umedida', value);
}
