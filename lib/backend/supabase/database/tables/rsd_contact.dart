import '../database.dart';

class RsdContactTable extends SupabaseTable<RsdContactRow> {
  @override
  String get tableName => 'rsd_contact';

  @override
  RsdContactRow createRow(Map<String, dynamic> data) => RsdContactRow(data);
}

class RsdContactRow extends SupabaseDataRow {
  RsdContactRow(super.data);

  @override
  SupabaseTable get table => RsdContactTable();

  int get contactid => getField<int>('contactid')!;
  set contactid(int value) => setField<int>('contactid', value);

  String get contactname => getField<String>('contactname')!;
  set contactname(String value) => setField<String>('contactname', value);

  String get contacttel => getField<String>('contacttel')!;
  set contacttel(String value) => setField<String>('contacttel', value);
}
