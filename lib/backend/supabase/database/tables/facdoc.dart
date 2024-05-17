import '../database.dart';

class FacdocTable extends SupabaseTable<FacdocRow> {
  @override
  String get tableName => 'facdoc';

  @override
  FacdocRow createRow(Map<String, dynamic> data) => FacdocRow(data);
}

class FacdocRow extends SupabaseDataRow {
  FacdocRow(super.data);

  @override
  SupabaseTable get table => FacdocTable();

  int get facdocid => getField<int>('facdocid')!;
  set facdocid(int value) => setField<int>('facdocid', value);

  int get facid => getField<int>('facid')!;
  set facid(int value) => setField<int>('facid', value);

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
