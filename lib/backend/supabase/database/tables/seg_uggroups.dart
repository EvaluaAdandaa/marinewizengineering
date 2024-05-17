import '../database.dart';

class SegUggroupsTable extends SupabaseTable<SegUggroupsRow> {
  @override
  String get tableName => 'seg_uggroups';

  @override
  SegUggroupsRow createRow(Map<String, dynamic> data) => SegUggroupsRow(data);
}

class SegUggroupsRow extends SupabaseDataRow {
  SegUggroupsRow(super.data);

  @override
  SupabaseTable get table => SegUggroupsTable();

  int get groupID => getField<int>('GroupID')!;
  set groupID(int value) => setField<int>('GroupID', value);

  String? get label => getField<String>('Label');
  set label(String? value) => setField<String>('Label', value);
}
