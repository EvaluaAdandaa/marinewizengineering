import '../database.dart';

class OcodTable extends SupabaseTable<OcodRow> {
  @override
  String get tableName => 'ocod';

  @override
  OcodRow createRow(Map<String, dynamic> data) => OcodRow(data);
}

class OcodRow extends SupabaseDataRow {
  OcodRow(super.data);

  @override
  SupabaseTable get table => OcodTable();

  int get ocodid => getField<int>('ocodid')!;
  set ocodid(int value) => setField<int>('ocodid', value);

  int? get ocoid => getField<int>('ocoid');
  set ocoid(int? value) => setField<int>('ocoid', value);

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  String? get referencia => getField<String>('referencia');
  set referencia(String? value) => setField<String>('referencia', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  double? get diametro => getField<double>('diametro');
  set diametro(double? value) => setField<double>('diametro', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  int? get aspas => getField<int>('aspas');
  set aspas(int? value) => setField<int>('aspas', value);

  int? get rotacion => getField<int>('rotacion');
  set rotacion(int? value) => setField<int>('rotacion', value);

  int? get material => getField<int>('material');
  set material(int? value) => setField<int>('material', value);

  int? get copa => getField<int>('copa');
  set copa(int? value) => setField<int>('copa', value);

  int? get geometria => getField<int>('geometria');
  set geometria(int? value) => setField<int>('geometria', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get modifyTs => getField<int>('modify_ts');
  set modifyTs(int? value) => setField<int>('modify_ts', value);

  int? get codpoliticaliq => getField<int>('codpoliticaliq');
  set codpoliticaliq(int? value) => setField<int>('codpoliticaliq', value);

  int? get paso => getField<int>('paso');
  set paso(int? value) => setField<int>('paso', value);

  int? get umedidaid => getField<int>('umedidaid');
  set umedidaid(int? value) => setField<int>('umedidaid', value);

  double? get piva => getField<double>('piva');
  set piva(double? value) => setField<double>('piva', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);
}
