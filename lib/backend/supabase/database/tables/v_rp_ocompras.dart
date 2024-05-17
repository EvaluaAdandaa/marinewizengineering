import '../database.dart';

class VRpOcomprasTable extends SupabaseTable<VRpOcomprasRow> {
  @override
  String get tableName => 'v_rp_ocompras';

  @override
  VRpOcomprasRow createRow(Map<String, dynamic> data) => VRpOcomprasRow(data);
}

class VRpOcomprasRow extends SupabaseDataRow {
  VRpOcomprasRow(super.data);

  @override
  SupabaseTable get table => VRpOcomprasTable();

  String? get numocompra => getField<String>('numocompra');
  set numocompra(String? value) => setField<String>('numocompra', value);

  DateTime? get fechaoc => getField<DateTime>('fechaoc');
  set fechaoc(DateTime? value) => setField<DateTime>('fechaoc', value);

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

  String? get formapago => getField<String>('formapago');
  set formapago(String? value) => setField<String>('formapago', value);

  String? get nommoneda => getField<String>('nommoneda');
  set nommoneda(String? value) => setField<String>('nommoneda', value);

  String? get direccionentrega => getField<String>('direccionentrega');
  set direccionentrega(String? value) =>
      setField<String>('direccionentrega', value);

  double? get totvlrtotal => getField<double>('totvlrtotal');
  set totvlrtotal(double? value) => setField<double>('totvlrtotal', value);

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

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  int? get ocoid => getField<int>('ocoid');
  set ocoid(int? value) => setField<int>('ocoid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  String? get idtributariapropia => getField<String>('idtributariapropia');
  set idtributariapropia(String? value) =>
      setField<String>('idtributariapropia', value);
}
