import '../database.dart';

class PropertiescontactsTable extends SupabaseTable<PropertiescontactsRow> {
  @override
  String get tableName => 'propertiescontacts';

  @override
  PropertiescontactsRow createRow(Map<String, dynamic> data) =>
      PropertiescontactsRow(data);
}

class PropertiescontactsRow extends SupabaseDataRow {
  PropertiescontactsRow(super.data);

  @override
  SupabaseTable get table => PropertiescontactsTable();

  int get propertiescontactid => getField<int>('propertiescontactid')!;
  set propertiescontactid(int value) =>
      setField<int>('propertiescontactid', value);

  int get contactsid => getField<int>('contactsid')!;
  set contactsid(int value) => setField<int>('contactsid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get contacttype => getField<int>('contacttype')!;
  set contacttype(int value) => setField<int>('contacttype', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  int get propertiesid => getField<int>('propertiesid')!;
  set propertiesid(int value) => setField<int>('propertiesid', value);
}
