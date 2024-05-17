import '../database.dart';

class ReqTable extends SupabaseTable<ReqRow> {
  @override
  String get tableName => 'req';

  @override
  ReqRow createRow(Map<String, dynamic> data) => ReqRow(data);
}

class ReqRow extends SupabaseDataRow {
  ReqRow(super.data);

  @override
  SupabaseTable get table => ReqTable();

  int get reqid => getField<int>('reqid')!;
  set reqid(int value) => setField<int>('reqid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numrequerimiento => getField<String>('numrequerimiento');
  set numrequerimiento(String? value) =>
      setField<String>('numrequerimiento', value);

  DateTime? get fecharequerimiento => getField<DateTime>('fecharequerimiento');
  set fecharequerimiento(DateTime? value) =>
      setField<DateTime>('fecharequerimiento', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  int? get vendedorextid => getField<int>('vendedorextid');
  set vendedorextid(int? value) => setField<int>('vendedorextid', value);

  String? get detalle => getField<String>('detalle');
  set detalle(String? value) => setField<String>('detalle', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  int? get gentarea => getField<int>('gentarea');
  set gentarea(int? value) => setField<int>('gentarea', value);

  DateTime? get fechaevento => getField<DateTime>('fechaevento');
  set fechaevento(DateTime? value) => setField<DateTime>('fechaevento', value);

  DateTime? get fechatarea => getField<DateTime>('fechatarea');
  set fechatarea(DateTime? value) => setField<DateTime>('fechatarea', value);

  DateTime? get fechacotizacion => getField<DateTime>('fechacotizacion');
  set fechacotizacion(DateTime? value) =>
      setField<DateTime>('fechacotizacion', value);

  int? get usrasignado => getField<int>('usrasignado');
  set usrasignado(int? value) => setField<int>('usrasignado', value);
}
