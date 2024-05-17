import '../database.dart';

class OseantTable extends SupabaseTable<OseantRow> {
  @override
  String get tableName => 'oseant';

  @override
  OseantRow createRow(Map<String, dynamic> data) => OseantRow(data);
}

class OseantRow extends SupabaseDataRow {
  OseantRow(super.data);

  @override
  SupabaseTable get table => OseantTable();

  int get oseantid => getField<int>('oseantid')!;
  set oseantid(int value) => setField<int>('oseantid', value);

  int get oseid => getField<int>('oseid')!;
  set oseid(int value) => setField<int>('oseid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  DateTime? get fechatransaccion => getField<DateTime>('fechatransaccion');
  set fechatransaccion(DateTime? value) =>
      setField<DateTime>('fechatransaccion', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  double? get vlranticipo => getField<double>('vlranticipo');
  set vlranticipo(double? value) => setField<double>('vlranticipo', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
