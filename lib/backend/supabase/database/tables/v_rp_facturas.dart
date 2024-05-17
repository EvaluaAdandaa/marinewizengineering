import '../database.dart';

class VRpFacturasTable extends SupabaseTable<VRpFacturasRow> {
  @override
  String get tableName => 'v_rp_facturas';

  @override
  VRpFacturasRow createRow(Map<String, dynamic> data) => VRpFacturasRow(data);
}

class VRpFacturasRow extends SupabaseDataRow {
  VRpFacturasRow(super.data);

  @override
  SupabaseTable get table => VRpFacturasTable();

  String? get numfactura => getField<String>('numfactura');
  set numfactura(String? value) => setField<String>('numfactura', value);

  DateTime? get fechafactura => getField<DateTime>('fechafactura');
  set fechafactura(DateTime? value) =>
      setField<DateTime>('fechafactura', value);

  DateTime? get fechavence => getField<DateTime>('fechavence');
  set fechavence(DateTime? value) => setField<DateTime>('fechavence', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get telefonos => getField<String>('telefonos');
  set telefonos(String? value) => setField<String>('telefonos', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get validezoferta => getField<int>('validezoferta');
  set validezoferta(int? value) => setField<int>('validezoferta', value);

  String? get tiempoentrega => getField<String>('tiempoentrega');
  set tiempoentrega(String? value) => setField<String>('tiempoentrega', value);

  String? get terminos => getField<String>('terminos');
  set terminos(String? value) => setField<String>('terminos', value);

  String? get formapago => getField<String>('formapago');
  set formapago(String? value) => setField<String>('formapago', value);

  String? get nommoneda => getField<String>('nommoneda');
  set nommoneda(String? value) => setField<String>('nommoneda', value);

  double? get totvlrtotal => getField<double>('totvlrtotal');
  set totvlrtotal(double? value) => setField<double>('totvlrtotal', value);

  double? get totvlradicional => getField<double>('totvlradicional');
  set totvlradicional(double? value) =>
      setField<double>('totvlradicional', value);

  double? get totvlrdescuento => getField<double>('totvlrdescuento');
  set totvlrdescuento(double? value) =>
      setField<double>('totvlrdescuento', value);

  double? get totvlrbruto => getField<double>('totvlrbruto');
  set totvlrbruto(double? value) => setField<double>('totvlrbruto', value);

  double? get totvlrneto => getField<double>('totvlrneto');
  set totvlrneto(double? value) => setField<double>('totvlrneto', value);

  double? get totvlriva => getField<double>('totvlriva');
  set totvlriva(double? value) => setField<double>('totvlriva', value);

  double? get totvlrtransporte => getField<double>('totvlrtransporte');
  set totvlrtransporte(double? value) =>
      setField<double>('totvlrtransporte', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get unegocio => getField<String>('unegocio');
  set unegocio(String? value) => setField<String>('unegocio', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  double? get vlradicional => getField<double>('vlradicional');
  set vlradicional(double? value) => setField<double>('vlradicional', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get facid => getField<int>('facid');
  set facid(int? value) => setField<int>('facid', value);

  int? get facdid => getField<int>('facdid');
  set facdid(int? value) => setField<int>('facdid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get idtributariapropia => getField<String>('idtributariapropia');
  set idtributariapropia(String? value) =>
      setField<String>('idtributariapropia', value);
}
