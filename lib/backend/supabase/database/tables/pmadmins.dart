import '../database.dart';

class PmadminsTable extends SupabaseTable<PmadminsRow> {
  @override
  String get tableName => 'pmadmins';

  @override
  PmadminsRow createRow(Map<String, dynamic> data) => PmadminsRow(data);
}

class PmadminsRow extends SupabaseDataRow {
  PmadminsRow(super.data);

  @override
  SupabaseTable get table => PmadminsTable();

  int get pmadminsid => getField<int>('pmadminsid')!;
  set pmadminsid(int value) => setField<int>('pmadminsid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);
}
