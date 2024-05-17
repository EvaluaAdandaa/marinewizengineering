import '../database.dart';

class TercatTable extends SupabaseTable<TercatRow> {
  @override
  String get tableName => 'tercat';

  @override
  TercatRow createRow(Map<String, dynamic> data) => TercatRow(data);
}

class TercatRow extends SupabaseDataRow {
  TercatRow(super.data);

  @override
  SupabaseTable get table => TercatTable();

  int get tercatid => getField<int>('tercatid')!;
  set tercatid(int value) => setField<int>('tercatid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get ptCatid => getField<int>('pt_catid');
  set ptCatid(int? value) => setField<int>('pt_catid', value);
}
