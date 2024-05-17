import '../database.dart';

class CtzdocTable extends SupabaseTable<CtzdocRow> {
  @override
  String get tableName => 'ctzdoc';

  @override
  CtzdocRow createRow(Map<String, dynamic> data) => CtzdocRow(data);
}

class CtzdocRow extends SupabaseDataRow {
  CtzdocRow(super.data);

  @override
  SupabaseTable get table => CtzdocTable();

  int get ctzdocid => getField<int>('ctzdocid')!;
  set ctzdocid(int value) => setField<int>('ctzdocid', value);

  int get ctzid => getField<int>('ctzid')!;
  set ctzid(int value) => setField<int>('ctzid', value);

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
