import '../database.dart';

class MrcTable extends SupabaseTable<MrcRow> {
  @override
  String get tableName => 'mrc';

  @override
  MrcRow createRow(Map<String, dynamic> data) => MrcRow(data);
}

class MrcRow extends SupabaseDataRow {
  MrcRow(super.data);

  @override
  SupabaseTable get table => MrcTable();

  int get mrcid => getField<int>('mrcid')!;
  set mrcid(int value) => setField<int>('mrcid', value);

  String? get nommarca => getField<String>('nommarca');
  set nommarca(String? value) => setField<String>('nommarca', value);
}
