import '../database.dart';

class GdDocdTable extends SupabaseTable<GdDocdRow> {
  @override
  String get tableName => 'gd_docd';

  @override
  GdDocdRow createRow(Map<String, dynamic> data) => GdDocdRow(data);
}

class GdDocdRow extends SupabaseDataRow {
  GdDocdRow(super.data);

  @override
  SupabaseTable get table => GdDocdTable();

  int get gdDocdid => getField<int>('gd_docdid')!;
  set gdDocdid(int value) => setField<int>('gd_docdid', value);

  int get gdDocid => getField<int>('gd_docid')!;
  set gdDocid(int value) => setField<int>('gd_docid', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
