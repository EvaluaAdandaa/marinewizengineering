import '../database.dart';

class HveqdTable extends SupabaseTable<HveqdRow> {
  @override
  String get tableName => 'hveqd';

  @override
  HveqdRow createRow(Map<String, dynamic> data) => HveqdRow(data);
}

class HveqdRow extends SupabaseDataRow {
  HveqdRow(super.data);

  @override
  SupabaseTable get table => HveqdTable();

  int get hveqdid => getField<int>('hveqdid')!;
  set hveqdid(int value) => setField<int>('hveqdid', value);

  int? get hveqid => getField<int>('hveqid');
  set hveqid(int? value) => setField<int>('hveqid', value);

  int? get mpldid => getField<int>('mpldid');
  set mpldid(int? value) => setField<int>('mpldid', value);

  int? get mpltid => getField<int>('mpltid');
  set mpltid(int? value) => setField<int>('mpltid', value);

  String? get alfanumerico => getField<String>('alfanumerico');
  set alfanumerico(String? value) => setField<String>('alfanumerico', value);

  double? get numerico => getField<double>('numerico');
  set numerico(double? value) => setField<double>('numerico', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  String? get memo => getField<String>('memo');
  set memo(String? value) => setField<String>('memo', value);
}
