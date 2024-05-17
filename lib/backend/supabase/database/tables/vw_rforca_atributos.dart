import '../database.dart';

class VwRforcaAtributosTable extends SupabaseTable<VwRforcaAtributosRow> {
  @override
  String get tableName => 'vw_rforca_atributos';

  @override
  VwRforcaAtributosRow createRow(Map<String, dynamic> data) =>
      VwRforcaAtributosRow(data);
}

class VwRforcaAtributosRow extends SupabaseDataRow {
  VwRforcaAtributosRow(super.data);

  @override
  SupabaseTable get table => VwRforcaAtributosTable();

  int? get rforid => getField<int>('rforid');
  set rforid(int? value) => setField<int>('rforid', value);

  int? get rforcaid => getField<int>('rforcaid');
  set rforcaid(int? value) => setField<int>('rforcaid', value);

  String? get valtexto => getField<String>('valtexto');
  set valtexto(String? value) => setField<String>('valtexto', value);

  DateTime? get valfecha => getField<DateTime>('valfecha');
  set valfecha(DateTime? value) => setField<DateTime>('valfecha', value);

  double? get valnumero => getField<double>('valnumero');
  set valnumero(double? value) => setField<double>('valnumero', value);

  double? get valnumero2 => getField<double>('valnumero2');
  set valnumero2(double? value) => setField<double>('valnumero2', value);

  int? get valsinocheck => getField<int>('valsinocheck');
  set valsinocheck(int? value) => setField<int>('valsinocheck', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  dynamic get jsinfo => getField<dynamic>('jsinfo');
  set jsinfo(dynamic value) => setField<dynamic>('jsinfo', value);

  int? get plforcaid => getField<int>('plforcaid');
  set plforcaid(int? value) => setField<int>('plforcaid', value);

  int? get plforid => getField<int>('plforid');
  set plforid(int? value) => setField<int>('plforid', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);

  String? get nomcampo => getField<String>('nomcampo');
  set nomcampo(String? value) => setField<String>('nomcampo', value);

  String? get nomcampo2 => getField<String>('nomcampo2');
  set nomcampo2(String? value) => setField<String>('nomcampo2', value);

  int? get tipocampo => getField<int>('tipocampo');
  set tipocampo(int? value) => setField<int>('tipocampo', value);

  int? get requerido => getField<int>('requerido');
  set requerido(int? value) => setField<int>('requerido', value);

  int? get reqfoto => getField<int>('reqfoto');
  set reqfoto(int? value) => setField<int>('reqfoto', value);

  int? get leeobs => getField<int>('leeobs');
  set leeobs(int? value) => setField<int>('leeobs', value);

  int? get mostrarnomcampo => getField<int>('mostrarnomcampo');
  set mostrarnomcampo(int? value) => setField<int>('mostrarnomcampo', value);

  int? get arrastrainfo => getField<int>('arrastrainfo');
  set arrastrainfo(int? value) => setField<int>('arrastrainfo', value);

  int? get tipoarrastre => getField<int>('tipoarrastre');
  set tipoarrastre(int? value) => setField<int>('tipoarrastre', value);

  String? get seccionformulario => getField<String>('seccionformulario');
  set seccionformulario(String? value) =>
      setField<String>('seccionformulario', value);

  String? get formatocaptura => getField<String>('formatocaptura');
  set formatocaptura(String? value) =>
      setField<String>('formatocaptura', value);

  int? get poscolumna => getField<int>('poscolumna');
  set poscolumna(int? value) => setField<int>('poscolumna', value);

  int? get poscamposgte => getField<int>('poscamposgte');
  set poscamposgte(int? value) => setField<int>('poscamposgte', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get cantnumleer => getField<int>('cantnumleer');
  set cantnumleer(int? value) => setField<int>('cantnumleer', value);
}
