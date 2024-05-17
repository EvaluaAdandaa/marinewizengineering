import '../database.dart';

class OseitTable extends SupabaseTable<OseitRow> {
  @override
  String get tableName => 'oseit';

  @override
  OseitRow createRow(Map<String, dynamic> data) => OseitRow(data);
}

class OseitRow extends SupabaseDataRow {
  OseitRow(super.data);

  @override
  SupabaseTable get table => OseitTable();

  int get oseitid => getField<int>('oseitid')!;
  set oseitid(int value) => setField<int>('oseitid', value);

  int get oseid => getField<int>('oseid')!;
  set oseid(int value) => setField<int>('oseid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get informetecnico => getField<String>('informetecnico');
  set informetecnico(String? value) =>
      setField<String>('informetecnico', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
