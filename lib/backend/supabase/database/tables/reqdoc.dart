import '../database.dart';

class ReqdocTable extends SupabaseTable<ReqdocRow> {
  @override
  String get tableName => 'reqdoc';

  @override
  ReqdocRow createRow(Map<String, dynamic> data) => ReqdocRow(data);
}

class ReqdocRow extends SupabaseDataRow {
  ReqdocRow(super.data);

  @override
  SupabaseTable get table => ReqdocTable();

  int get reqdocid => getField<int>('reqdocid')!;
  set reqdocid(int value) => setField<int>('reqdocid', value);

  int get reqid => getField<int>('reqid')!;
  set reqid(int value) => setField<int>('reqid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
