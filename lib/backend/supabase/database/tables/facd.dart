import '../database.dart';

class FacdTable extends SupabaseTable<FacdRow> {
  @override
  String get tableName => 'facd';

  @override
  FacdRow createRow(Map<String, dynamic> data) => FacdRow(data);
}

class FacdRow extends SupabaseDataRow {
  FacdRow(super.data);

  @override
  SupabaseTable get table => FacdTable();

  int get facdid => getField<int>('facdid')!;
  set facdid(int value) => setField<int>('facdid', value);

  int? get facid => getField<int>('facid');
  set facid(int? value) => setField<int>('facid', value);

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get item => getField<int>('item');
  set item(int? value) => setField<int>('item', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  int? get teridproveedor => getField<int>('teridproveedor');
  set teridproveedor(int? value) => setField<int>('teridproveedor', value);

  double? get vlradicional => getField<double>('vlradicional');
  set vlradicional(double? value) => setField<double>('vlradicional', value);

  String? get vlradicionalobs => getField<String>('vlradicionalobs');
  set vlradicionalobs(String? value) =>
      setField<String>('vlradicionalobs', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

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

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  int? get costadoid => getField<int>('costadoid');
  set costadoid(int? value) => setField<int>('costadoid', value);

  int? get tipobujeid => getField<int>('tipobujeid');
  set tipobujeid(int? value) => setField<int>('tipobujeid', value);

  double? get vlrbruto => getField<double>('vlrbruto');
  set vlrbruto(double? value) => setField<double>('vlrbruto', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  int? get modifyTs => getField<int>('modify_ts');
  set modifyTs(int? value) => setField<int>('modify_ts', value);
}
