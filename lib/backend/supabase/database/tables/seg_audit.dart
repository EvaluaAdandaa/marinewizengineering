import '../database.dart';

class SegAuditTable extends SupabaseTable<SegAuditRow> {
  @override
  String get tableName => 'seg_audit';

  @override
  SegAuditRow createRow(Map<String, dynamic> data) => SegAuditRow(data);
}

class SegAuditRow extends SupabaseDataRow {
  SegAuditRow(super.data);

  @override
  SupabaseTable get table => SegAuditTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get datetime => getField<DateTime>('datetime');
  set datetime(DateTime? value) => setField<DateTime>('datetime', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get tableField => getField<String>('table');
  set tableField(String? value) => setField<String>('table', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
