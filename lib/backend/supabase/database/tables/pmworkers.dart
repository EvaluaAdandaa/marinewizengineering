import '../database.dart';

class PmworkersTable extends SupabaseTable<PmworkersRow> {
  @override
  String get tableName => 'pmworkers';

  @override
  PmworkersRow createRow(Map<String, dynamic> data) => PmworkersRow(data);
}

class PmworkersRow extends SupabaseDataRow {
  PmworkersRow(super.data);

  @override
  SupabaseTable get table => PmworkersTable();

  int get pmworkersid => getField<int>('pmworkersid')!;
  set pmworkersid(int value) => setField<int>('pmworkersid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get pmadminsid => getField<int>('pmadminsid');
  set pmadminsid(int? value) => setField<int>('pmadminsid', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  int get contactsid => getField<int>('contactsid')!;
  set contactsid(int value) => setField<int>('contactsid', value);
}
