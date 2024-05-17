import '../database.dart';

class TtfTable extends SupabaseTable<TtfRow> {
  @override
  String get tableName => 'ttf';

  @override
  TtfRow createRow(Map<String, dynamic> data) => TtfRow(data);
}

class TtfRow extends SupabaseDataRow {
  TtfRow(super.data);

  @override
  SupabaseTable get table => TtfTable();

  int get ttfid => getField<int>('ttfid')!;
  set ttfid(int value) => setField<int>('ttfid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get tipott => getField<String>('tipott');
  set tipott(String? value) => setField<String>('tipott', value);

  String? get numdocumento => getField<String>('numdocumento');
  set numdocumento(String? value) => setField<String>('numdocumento', value);

  DateTime? get fechadocumento => getField<DateTime>('fechadocumento');
  set fechadocumento(DateTime? value) =>
      setField<DateTime>('fechadocumento', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  int? get ttfidorigen => getField<int>('ttfidorigen');
  set ttfidorigen(int? value) => setField<int>('ttfidorigen', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  int? get vendedorextid => getField<int>('vendedorextid');
  set vendedorextid(int? value) => setField<int>('vendedorextid', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  int? get formapago => getField<int>('formapago');
  set formapago(int? value) => setField<int>('formapago', value);

  int? get validezoferta => getField<int>('validezoferta');
  set validezoferta(int? value) => setField<int>('validezoferta', value);

  int? get tiempoentrega => getField<int>('tiempoentrega');
  set tiempoentrega(int? value) => setField<int>('tiempoentrega', value);

  int? get saasMndid => getField<int>('saas_mndid');
  set saasMndid(int? value) => setField<int>('saas_mndid', value);

  int? get terminos => getField<int>('terminos');
  set terminos(int? value) => setField<int>('terminos', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  double? get vlradicional => getField<double>('vlradicional');
  set vlradicional(double? value) => setField<double>('vlradicional', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  double? get vlrsaldo => getField<double>('vlrsaldo');
  set vlrsaldo(double? value) => setField<double>('vlrsaldo', value);

  DateTime? get fechaaprobacion => getField<DateTime>('fechaaprobacion');
  set fechaaprobacion(DateTime? value) =>
      setField<DateTime>('fechaaprobacion', value);

  String? get vlradicionalobs => getField<String>('vlradicionalobs');
  set vlradicionalobs(String? value) =>
      setField<String>('vlradicionalobs', value);

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

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);
}
