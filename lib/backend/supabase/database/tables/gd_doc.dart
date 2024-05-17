import '../database.dart';

class GdDocTable extends SupabaseTable<GdDocRow> {
  @override
  String get tableName => 'gd_doc';

  @override
  GdDocRow createRow(Map<String, dynamic> data) => GdDocRow(data);
}

class GdDocRow extends SupabaseDataRow {
  GdDocRow(super.data);

  @override
  SupabaseTable get table => GdDocTable();

  int get gdDocid => getField<int>('gd_docid')!;
  set gdDocid(int value) => setField<int>('gd_docid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);

  int? get identificador => getField<int>('identificador');
  set identificador(int? value) => setField<int>('identificador', value);

  DateTime? get fechadocumento => getField<DateTime>('fechadocumento');
  set fechadocumento(DateTime? value) =>
      setField<DateTime>('fechadocumento', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  String? get numreferencia => getField<String>('numreferencia');
  set numreferencia(String? value) => setField<String>('numreferencia', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime? get fechaalta => getField<DateTime>('fechaalta');
  set fechaalta(DateTime? value) => setField<DateTime>('fechaalta', value);

  int get usridalta => getField<int>('usridalta')!;
  set usridalta(int value) => setField<int>('usridalta', value);
}
