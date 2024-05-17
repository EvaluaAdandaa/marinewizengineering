import '../database.dart';

class SegUgmembersTable extends SupabaseTable<SegUgmembersRow> {
  @override
  String get tableName => 'seg_ugmembers';

  @override
  SegUgmembersRow createRow(Map<String, dynamic> data) => SegUgmembersRow(data);
}

class SegUgmembersRow extends SupabaseDataRow {
  SegUgmembersRow(super.data);

  @override
  SupabaseTable get table => SegUgmembersTable();

  String get userName => getField<String>('UserName')!;
  set userName(String value) => setField<String>('UserName', value);

  int get groupID => getField<int>('GroupID')!;
  set groupID(int value) => setField<int>('GroupID', value);
}
