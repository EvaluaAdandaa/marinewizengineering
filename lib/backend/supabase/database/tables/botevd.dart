import '../database.dart';

class BotevdTable extends SupabaseTable<BotevdRow> {
  @override
  String get tableName => 'botevd';

  @override
  BotevdRow createRow(Map<String, dynamic> data) => BotevdRow(data);
}

class BotevdRow extends SupabaseDataRow {
  BotevdRow(super.data);

  @override
  SupabaseTable get table => BotevdTable();

  int get botevdid => getField<int>('botevdid')!;
  set botevdid(int value) => setField<int>('botevdid', value);

  int get botevid => getField<int>('botevid')!;
  set botevid(int value) => setField<int>('botevid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
