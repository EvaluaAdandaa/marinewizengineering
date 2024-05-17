import '../database.dart';

class SegUgrightsTable extends SupabaseTable<SegUgrightsRow> {
  @override
  String get tableName => 'seg_ugrights';

  @override
  SegUgrightsRow createRow(Map<String, dynamic> data) => SegUgrightsRow(data);
}

class SegUgrightsRow extends SupabaseDataRow {
  SegUgrightsRow(super.data);

  @override
  SupabaseTable get table => SegUgrightsTable();

  String get tableNameField => getField<String>('TableName')!;
  set tableNameField(String value) => setField<String>('TableName', value);

  int get groupID => getField<int>('GroupID')!;
  set groupID(int value) => setField<int>('GroupID', value);

  String? get accessMask => getField<String>('AccessMask');
  set accessMask(String? value) => setField<String>('AccessMask', value);

  String? get page => getField<String>('Page');
  set page(String? value) => setField<String>('Page', value);
}
