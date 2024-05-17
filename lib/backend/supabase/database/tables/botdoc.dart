import '../database.dart';

class BotdocTable extends SupabaseTable<BotdocRow> {
  @override
  String get tableName => 'botdoc';

  @override
  BotdocRow createRow(Map<String, dynamic> data) => BotdocRow(data);
}

class BotdocRow extends SupabaseDataRow {
  BotdocRow(super.data);

  @override
  SupabaseTable get table => BotdocTable();

  int get botdocid => getField<int>('botdocid')!;
  set botdocid(int value) => setField<int>('botdocid', value);

  int get botid => getField<int>('botid')!;
  set botid(int value) => setField<int>('botid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
