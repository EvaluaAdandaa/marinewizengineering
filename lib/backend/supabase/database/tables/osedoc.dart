import '../database.dart';

class OsedocTable extends SupabaseTable<OsedocRow> {
  @override
  String get tableName => 'osedoc';

  @override
  OsedocRow createRow(Map<String, dynamic> data) => OsedocRow(data);
}

class OsedocRow extends SupabaseDataRow {
  OsedocRow(super.data);

  @override
  SupabaseTable get table => OsedocTable();

  int get osedocid => getField<int>('osedocid')!;
  set osedocid(int value) => setField<int>('osedocid', value);

  int get oseid => getField<int>('oseid')!;
  set oseid(int value) => setField<int>('oseid', value);

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
