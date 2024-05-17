import '../database.dart';

class TerdocTable extends SupabaseTable<TerdocRow> {
  @override
  String get tableName => 'terdoc';

  @override
  TerdocRow createRow(Map<String, dynamic> data) => TerdocRow(data);
}

class TerdocRow extends SupabaseDataRow {
  TerdocRow(super.data);

  @override
  SupabaseTable get table => TerdocTable();

  int get terdocid => getField<int>('terdocid')!;
  set terdocid(int value) => setField<int>('terdocid', value);

  int get terid => getField<int>('terid')!;
  set terid(int value) => setField<int>('terid', value);

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
