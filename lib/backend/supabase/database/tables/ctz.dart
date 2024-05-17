import '../database.dart';

class CtzTable extends SupabaseTable<CtzRow> {
  @override
  String get tableName => 'ctz';

  @override
  CtzRow createRow(Map<String, dynamic> data) => CtzRow(data);
}

class CtzRow extends SupabaseDataRow {
  CtzRow(super.data);

  @override
  SupabaseTable get table => CtzTable();

  int get ctzid => getField<int>('ctzid')!;
  set ctzid(int value) => setField<int>('ctzid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numcotizacion => getField<String>('numcotizacion');
  set numcotizacion(String? value) => setField<String>('numcotizacion', value);

  DateTime? get fechacotizacion => getField<DateTime>('fechacotizacion');
  set fechacotizacion(DateTime? value) =>
      setField<DateTime>('fechacotizacion', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  int? get vendedorextid => getField<int>('vendedorextid');
  set vendedorextid(int? value) => setField<int>('vendedorextid', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  int? get formapago => getField<int>('formapago');
  set formapago(int? value) => setField<int>('formapago', value);

  int? get validezoferta => getField<int>('validezoferta');
  set validezoferta(int? value) => setField<int>('validezoferta', value);

  String? get tiempoentrega => getField<String>('tiempoentrega');
  set tiempoentrega(String? value) => setField<String>('tiempoentrega', value);

  int? get saasMndid => getField<int>('saas_mndid');
  set saasMndid(int? value) => setField<int>('saas_mndid', value);

  double? get vlrtrm => getField<double>('vlrtrm');
  set vlrtrm(double? value) => setField<double>('vlrtrm', value);

  String? get terminos => getField<String>('terminos');
  set terminos(String? value) => setField<String>('terminos', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime? get fechaaprobacion => getField<DateTime>('fechaaprobacion');
  set fechaaprobacion(DateTime? value) =>
      setField<DateTime>('fechaaprobacion', value);

  String? get aprobadopor => getField<String>('aprobadopor');
  set aprobadopor(String? value) => setField<String>('aprobadopor', value);

  DateTime? get noaprobacionfecha => getField<DateTime>('noaprobacionfecha');
  set noaprobacionfecha(DateTime? value) =>
      setField<DateTime>('noaprobacionfecha', value);

  int? get noaprobacioncausal => getField<int>('noaprobacioncausal');
  set noaprobacioncausal(int? value) =>
      setField<int>('noaprobacioncausal', value);

  String? get noaprobacioncausalobs =>
      getField<String>('noaprobacioncausalobs');
  set noaprobacioncausalobs(String? value) =>
      setField<String>('noaprobacioncausalobs', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlradicional => getField<double>('vlradicional');
  set vlradicional(double? value) => setField<double>('vlradicional', value);

  String? get vlradicionalobs => getField<String>('vlradicionalobs');
  set vlradicionalobs(String? value) =>
      setField<String>('vlradicionalobs', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrtransporte => getField<double>('vlrtransporte');
  set vlrtransporte(double? value) => setField<double>('vlrtransporte', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get facid => getField<int>('facid');
  set facid(int? value) => setField<int>('facid', value);

  int? get genose => getField<int>('genose');
  set genose(int? value) => setField<int>('genose', value);

  int? get reqid => getField<int>('reqid');
  set reqid(int? value) => setField<int>('reqid', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  int? get anuid => getField<int>('anuid');
  set anuid(int? value) => setField<int>('anuid', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  int? get enseguimiento => getField<int>('enseguimiento');
  set enseguimiento(int? value) => setField<int>('enseguimiento', value);

  DateTime? get fechaestautorizacion =>
      getField<DateTime>('fechaestautorizacion');
  set fechaestautorizacion(DateTime? value) =>
      setField<DateTime>('fechaestautorizacion', value);

  DateTime? get fechaproxseguimiento =>
      getField<DateTime>('fechaproxseguimiento');
  set fechaproxseguimiento(DateTime? value) =>
      setField<DateTime>('fechaproxseguimiento', value);
}
