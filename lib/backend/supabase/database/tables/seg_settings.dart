import '../database.dart';

class SegSettingsTable extends SupabaseTable<SegSettingsRow> {
  @override
  String get tableName => 'seg_settings';

  @override
  SegSettingsRow createRow(Map<String, dynamic> data) => SegSettingsRow(data);
}

class SegSettingsRow extends SupabaseDataRow {
  SegSettingsRow(super.data);

  @override
  SupabaseTable get table => SegSettingsTable();

  int get id => getField<int>('ID')!;
  set id(int value) => setField<int>('ID', value);

  int? get type => getField<int>('TYPE');
  set type(int? value) => setField<int>('TYPE', value);

  String? get name => getField<String>('NAME');
  set name(String? value) => setField<String>('NAME', value);

  String? get username => getField<String>('USERNAME');
  set username(String? value) => setField<String>('USERNAME', value);

  String? get cookie => getField<String>('COOKIE');
  set cookie(String? value) => setField<String>('COOKIE', value);

  String? get search => getField<String>('SEARCH');
  set search(String? value) => setField<String>('SEARCH', value);

  String? get tablename => getField<String>('TABLENAME');
  set tablename(String? value) => setField<String>('TABLENAME', value);
}
