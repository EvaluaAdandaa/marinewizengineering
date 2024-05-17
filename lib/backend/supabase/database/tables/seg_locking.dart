import '../database.dart';

class SegLockingTable extends SupabaseTable<SegLockingRow> {
  @override
  String get tableName => 'seg_locking';

  @override
  SegLockingRow createRow(Map<String, dynamic> data) => SegLockingRow(data);
}

class SegLockingRow extends SupabaseDataRow {
  SegLockingRow(super.data);

  @override
  SupabaseTable get table => SegLockingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tableField => getField<String>('table');
  set tableField(String? value) => setField<String>('table', value);

  DateTime? get startdatetime => getField<DateTime>('startdatetime');
  set startdatetime(DateTime? value) =>
      setField<DateTime>('startdatetime', value);

  DateTime? get confirmdatetime => getField<DateTime>('confirmdatetime');
  set confirmdatetime(DateTime? value) =>
      setField<DateTime>('confirmdatetime', value);

  String? get keys => getField<String>('keys');
  set keys(String? value) => setField<String>('keys', value);

  String? get sessionid => getField<String>('sessionid');
  set sessionid(String? value) => setField<String>('sessionid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get action => getField<int>('action');
  set action(int? value) => setField<int>('action', value);
}
