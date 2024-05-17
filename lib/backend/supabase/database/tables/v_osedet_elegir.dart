import '../database.dart';

class VOsedetElegirTable extends SupabaseTable<VOsedetElegirRow> {
  @override
  String get tableName => 'v_osedet_elegir';

  @override
  VOsedetElegirRow createRow(Map<String, dynamic> data) =>
      VOsedetElegirRow(data);
}

class VOsedetElegirRow extends SupabaseDataRow {
  VOsedetElegirRow(super.data);

  @override
  SupabaseTable get table => VOsedetElegirTable();

  String? get numorden => getField<String>('numorden');
  set numorden(String? value) => setField<String>('numorden', value);

  DateTime? get fechaos => getField<DateTime>('fechaos');
  set fechaos(DateTime? value) => setField<DateTime>('fechaos', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get estadoorden => getField<int>('estadoorden');
  set estadoorden(int? value) => setField<int>('estadoorden', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  int? get estadoitem => getField<int>('estadoitem');
  set estadoitem(int? value) => setField<int>('estadoitem', value);

  int? get finalizado => getField<int>('finalizado');
  set finalizado(int? value) => setField<int>('finalizado', value);

  DateTime? get finalizadofecha => getField<DateTime>('finalizadofecha');
  set finalizadofecha(DateTime? value) =>
      setField<DateTime>('finalizadofecha', value);
}
