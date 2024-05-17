import '../database.dart';

class FacTable extends SupabaseTable<FacRow> {
  @override
  String get tableName => 'fac';

  @override
  FacRow createRow(Map<String, dynamic> data) => FacRow(data);
}

class FacRow extends SupabaseDataRow {
  FacRow(super.data);

  @override
  SupabaseTable get table => FacTable();

  int get facid => getField<int>('facid')!;
  set facid(int value) => setField<int>('facid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numfactura => getField<String>('numfactura');
  set numfactura(String? value) => setField<String>('numfactura', value);

  DateTime get fechafactura => getField<DateTime>('fechafactura')!;
  set fechafactura(DateTime value) => setField<DateTime>('fechafactura', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

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

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

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

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  double? get vlranticipos => getField<double>('vlranticipos');
  set vlranticipos(double? value) => setField<double>('vlranticipos', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  DateTime? get fechapago => getField<DateTime>('fechapago');
  set fechapago(DateTime? value) => setField<DateTime>('fechapago', value);

  int? get usridpago => getField<int>('usridpago');
  set usridpago(int? value) => setField<int>('usridpago', value);

  int? get anuid => getField<int>('anuid');
  set anuid(int? value) => setField<int>('anuid', value);
}
