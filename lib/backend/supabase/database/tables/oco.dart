import '../database.dart';

class OcoTable extends SupabaseTable<OcoRow> {
  @override
  String get tableName => 'oco';

  @override
  OcoRow createRow(Map<String, dynamic> data) => OcoRow(data);
}

class OcoRow extends SupabaseDataRow {
  OcoRow(super.data);

  @override
  SupabaseTable get table => OcoTable();

  int get ocoid => getField<int>('ocoid')!;
  set ocoid(int value) => setField<int>('ocoid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numoc => getField<String>('numoc');
  set numoc(String? value) => setField<String>('numoc', value);

  DateTime? get fechaoc => getField<DateTime>('fechaoc');
  set fechaoc(DateTime? value) => setField<DateTime>('fechaoc', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  int? get claocid => getField<int>('claocid');
  set claocid(int? value) => setField<int>('claocid', value);

  int? get usrsolicita => getField<int>('usrsolicita');
  set usrsolicita(int? value) => setField<int>('usrsolicita', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get direccionentregaid => getField<int>('direccionentregaid');
  set direccionentregaid(int? value) =>
      setField<int>('direccionentregaid', value);

  int? get saasMndid => getField<int>('saas_mndid');
  set saasMndid(int? value) => setField<int>('saas_mndid', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime? get fechaaprobacion1 => getField<DateTime>('fechaaprobacion1');
  set fechaaprobacion1(DateTime? value) =>
      setField<DateTime>('fechaaprobacion1', value);

  int? get aprobadopor1 => getField<int>('aprobadopor1');
  set aprobadopor1(int? value) => setField<int>('aprobadopor1', value);

  DateTime? get fechaaprobacion2 => getField<DateTime>('fechaaprobacion2');
  set fechaaprobacion2(DateTime? value) =>
      setField<DateTime>('fechaaprobacion2', value);

  int? get aprobadopor2 => getField<int>('aprobadopor2');
  set aprobadopor2(int? value) => setField<int>('aprobadopor2', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  int? get formapago => getField<int>('formapago');
  set formapago(int? value) => setField<int>('formapago', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  double? get vlrtransporte => getField<double>('vlrtransporte');
  set vlrtransporte(double? value) => setField<double>('vlrtransporte', value);
}
