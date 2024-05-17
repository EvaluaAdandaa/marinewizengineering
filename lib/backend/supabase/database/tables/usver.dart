import '../database.dart';

class UsverTable extends SupabaseTable<UsverRow> {
  @override
  String get tableName => 'usver';

  @override
  UsverRow createRow(Map<String, dynamic> data) => UsverRow(data);
}

class UsverRow extends SupabaseDataRow {
  UsverRow(super.data);

  @override
  SupabaseTable get table => UsverTable();

  int get usverid => getField<int>('usverid')!;
  set usverid(int value) => setField<int>('usverid', value);

  String get codeVersion => getField<String>('code_version')!;
  set codeVersion(String value) => setField<String>('code_version', value);

  String get dbVersion => getField<String>('db_version')!;
  set dbVersion(String value) => setField<String>('db_version', value);

  DateTime? get lastDbUpdate => getField<DateTime>('last_db_update');
  set lastDbUpdate(DateTime? value) =>
      setField<DateTime>('last_db_update', value);

  DateTime? get lastCodeUpdate => getField<DateTime>('last_code_update');
  set lastCodeUpdate(DateTime? value) =>
      setField<DateTime>('last_code_update', value);
}
