import '../database.dart';

class TardTable extends SupabaseTable<TardRow> {
  @override
  String get tableName => 'tard';

  @override
  TardRow createRow(Map<String, dynamic> data) => TardRow(data);
}

class TardRow extends SupabaseDataRow {
  TardRow(super.data);

  @override
  SupabaseTable get table => TardTable();

  int get tardid => getField<int>('tardid')!;
  set tardid(int value) => setField<int>('tardid', value);

  int? get tarid => getField<int>('tarid');
  set tarid(int? value) => setField<int>('tarid', value);

  int get serid => getField<int>('serid')!;
  set serid(int value) => setField<int>('serid', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
