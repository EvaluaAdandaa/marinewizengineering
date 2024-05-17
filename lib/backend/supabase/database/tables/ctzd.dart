import '../database.dart';

class CtzdTable extends SupabaseTable<CtzdRow> {
  @override
  String get tableName => 'ctzd';

  @override
  CtzdRow createRow(Map<String, dynamic> data) => CtzdRow(data);
}

class CtzdRow extends SupabaseDataRow {
  CtzdRow(super.data);

  @override
  SupabaseTable get table => CtzdTable();

  int get ctzdid => getField<int>('ctzdid')!;
  set ctzdid(int value) => setField<int>('ctzdid', value);

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get diametro => getField<double>('diametro');
  set diametro(double? value) => setField<double>('diametro', value);

  double? get paso => getField<double>('paso');
  set paso(double? value) => setField<double>('paso', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  int? get aspas => getField<int>('aspas');
  set aspas(int? value) => setField<int>('aspas', value);

  int? get rotacion => getField<int>('rotacion');
  set rotacion(int? value) => setField<int>('rotacion', value);

  int? get chkscanbalanceo => getField<int>('chkscanbalanceo');
  set chkscanbalanceo(int? value) => setField<int>('chkscanbalanceo', value);

  int? get material => getField<int>('material');
  set material(int? value) => setField<int>('material', value);

  int? get copa => getField<int>('copa');
  set copa(int? value) => setField<int>('copa', value);

  int? get geometria => getField<int>('geometria');
  set geometria(int? value) => setField<int>('geometria', value);

  int? get cambiopaso => getField<int>('cambiopaso');
  set cambiopaso(int? value) => setField<int>('cambiopaso', value);

  int? get reducciondiametro => getField<int>('reducciondiametro');
  set reducciondiametro(int? value) =>
      setField<int>('reducciondiametro', value);

  double? get vlradicional => getField<double>('vlradicional');
  set vlradicional(double? value) => setField<double>('vlradicional', value);

  String? get vlradicionalobs => getField<String>('vlradicionalobs');
  set vlradicionalobs(String? value) =>
      setField<String>('vlradicionalobs', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get modifyTs => getField<int>('modify_ts');
  set modifyTs(int? value) => setField<int>('modify_ts', value);

  int? get aprobado => getField<int>('aprobado');
  set aprobado(int? value) => setField<int>('aprobado', value);

  int? get codpoliticaliq => getField<int>('codpoliticaliq');
  set codpoliticaliq(int? value) => setField<int>('codpoliticaliq', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  double? get piva => getField<double>('piva');
  set piva(double? value) => setField<double>('piva', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrdescuento => getField<double>('vlrdescuento');
  set vlrdescuento(double? value) => setField<double>('vlrdescuento', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  int? get costadoid => getField<int>('costadoid');
  set costadoid(int? value) => setField<int>('costadoid', value);

  int? get tipobujeid => getField<int>('tipobujeid');
  set tipobujeid(int? value) => setField<int>('tipobujeid', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  int? get generajobticket => getField<int>('generajobticket');
  set generajobticket(int? value) => setField<int>('generajobticket', value);

  String? get umedida => getField<String>('umedida');
  set umedida(String? value) => setField<String>('umedida', value);
}
