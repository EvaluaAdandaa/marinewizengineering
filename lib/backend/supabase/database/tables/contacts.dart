import '../database.dart';

class ContactsTable extends SupabaseTable<ContactsRow> {
  @override
  String get tableName => 'contacts';

  @override
  ContactsRow createRow(Map<String, dynamic> data) => ContactsRow(data);
}

class ContactsRow extends SupabaseDataRow {
  ContactsRow(super.data);

  @override
  SupabaseTable get table => ContactsTable();

  int get contactsid => getField<int>('contactsid')!;
  set contactsid(int value) => setField<int>('contactsid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get surname => getField<String>('surname');
  set surname(String? value) => setField<String>('surname', value);

  String? get phonenumber => getField<String>('phonenumber');
  set phonenumber(String? value) => setField<String>('phonenumber', value);

  String? get mail => getField<String>('mail');
  set mail(String? value) => setField<String>('mail', value);

  int get contacttype => getField<int>('contacttype')!;
  set contacttype(int value) => setField<int>('contacttype', value);

  int? get relatedproperty => getField<int>('relatedproperty');
  set relatedproperty(int? value) => setField<int>('relatedproperty', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get adminid => getField<int>('adminid');
  set adminid(int? value) => setField<int>('adminid', value);
}
