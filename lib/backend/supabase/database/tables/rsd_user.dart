import '../database.dart';

class RsdUserTable extends SupabaseTable<RsdUserRow> {
  @override
  String get tableName => 'rsd_user';

  @override
  RsdUserRow createRow(Map<String, dynamic> data) => RsdUserRow(data);
}

class RsdUserRow extends SupabaseDataRow {
  RsdUserRow(super.data);

  @override
  SupabaseTable get table => RsdUserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  int get usertype => getField<int>('usertype')!;
  set usertype(int value) => setField<int>('usertype', value);

  int get contactid => getField<int>('contactid')!;
  set contactid(int value) => setField<int>('contactid', value);
}
