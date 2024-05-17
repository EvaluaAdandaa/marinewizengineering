import '../database.dart';

class PorpertyownersTable extends SupabaseTable<PorpertyownersRow> {
  @override
  String get tableName => 'porpertyowners';

  @override
  PorpertyownersRow createRow(Map<String, dynamic> data) =>
      PorpertyownersRow(data);
}

class PorpertyownersRow extends SupabaseDataRow {
  PorpertyownersRow(super.data);

  @override
  SupabaseTable get table => PorpertyownersTable();

  int get porpertyownersid => getField<int>('porpertyownersid')!;
  set porpertyownersid(int value) => setField<int>('porpertyownersid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get contactsid => getField<int>('contactsid')!;
  set contactsid(int value) => setField<int>('contactsid', value);
}
