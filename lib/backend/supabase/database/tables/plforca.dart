import '../database.dart';

class PlforcaTable extends SupabaseTable<PlforcaRow> {
  @override
  String get tableName => 'plforca';

  @override
  PlforcaRow createRow(Map<String, dynamic> data) => PlforcaRow(data);
}

class PlforcaRow extends SupabaseDataRow {
  PlforcaRow(super.data);

  @override
  SupabaseTable get table => PlforcaTable();

  int get plforcaid => getField<int>('plforcaid')!;
  set plforcaid(int value) => setField<int>('plforcaid', value);

  int get plforid => getField<int>('plforid')!;
  set plforid(int value) => setField<int>('plforid', value);

  int get secuencia => getField<int>('secuencia')!;
  set secuencia(int value) => setField<int>('secuencia', value);

  String get nomcampo => getField<String>('nomcampo')!;
  set nomcampo(String value) => setField<String>('nomcampo', value);

  int get tipocampo => getField<int>('tipocampo')!;
  set tipocampo(int value) => setField<int>('tipocampo', value);

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

  String? get condicion => getField<String>('condicion');
  set condicion(String? value) => setField<String>('condicion', value);

  String? get dbtabla => getField<String>('dbtabla');
  set dbtabla(String? value) => setField<String>('dbtabla', value);

  String? get dbcampobus => getField<String>('dbcampobus');
  set dbcampobus(String? value) => setField<String>('dbcampobus', value);

  String? get dbcampomos => getField<String>('dbcampomos');
  set dbcampomos(String? value) => setField<String>('dbcampomos', value);

  String? get dbcampocond => getField<String>('dbcampocond');
  set dbcampocond(String? value) => setField<String>('dbcampocond', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get cantnumleer => getField<int>('cantnumleer');
  set cantnumleer(int? value) => setField<int>('cantnumleer', value);

  String? get nomcampo2 => getField<String>('nomcampo2');
  set nomcampo2(String? value) => setField<String>('nomcampo2', value);
}
