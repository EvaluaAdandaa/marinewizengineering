import '../database.dart';

class VRpJobticketTable extends SupabaseTable<VRpJobticketRow> {
  @override
  String get tableName => 'v_rp_jobticket';

  @override
  VRpJobticketRow createRow(Map<String, dynamic> data) => VRpJobticketRow(data);
}

class VRpJobticketRow extends SupabaseDataRow {
  VRpJobticketRow(super.data);

  @override
  SupabaseTable get table => VRpJobticketTable();

  String? get numoservicio => getField<String>('numoservicio');
  set numoservicio(String? value) => setField<String>('numoservicio', value);

  DateTime? get fechaos => getField<DateTime>('fechaos');
  set fechaos(DateTime? value) => setField<DateTime>('fechaos', value);

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

  String? get nomreferencia => getField<String>('nomreferencia');
  set nomreferencia(String? value) => setField<String>('nomreferencia', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get idtributariapropia => getField<String>('idtributariapropia');
  set idtributariapropia(String? value) =>
      setField<String>('idtributariapropia', value);
}
