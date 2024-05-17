import '../database.dart';

class VIcFacturasTable extends SupabaseTable<VIcFacturasRow> {
  @override
  String get tableName => 'v_ic_facturas';

  @override
  VIcFacturasRow createRow(Map<String, dynamic> data) => VIcFacturasRow(data);
}

class VIcFacturasRow extends SupabaseDataRow {
  VIcFacturasRow(super.data);

  @override
  SupabaseTable get table => VIcFacturasTable();

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get tipodoc => getField<String>('tipodoc');
  set tipodoc(String? value) => setField<String>('tipodoc', value);

  String? get prefijo => getField<String>('prefijo');
  set prefijo(String? value) => setField<String>('prefijo', value);

  String? get documenton => getField<String>('documenton');
  set documenton(String? value) => setField<String>('documenton', value);

  int? get anulado => getField<int>('anulado');
  set anulado(int? value) => setField<int>('anulado', value);

  DateTime? get fechafactura => getField<DateTime>('fechafactura');
  set fechafactura(DateTime? value) =>
      setField<DateTime>('fechafactura', value);

  String? get fechafacturaF => getField<String>('fechafactura_f');
  set fechafacturaF(String? value) => setField<String>('fechafactura_f', value);

  String? get nit => getField<String>('nit');
  set nit(String? value) => setField<String>('nit', value);

  String? get notafac => getField<String>('notafac');
  set notafac(String? value) => setField<String>('notafac', value);

  int? get bloqueado => getField<int>('bloqueado');
  set bloqueado(int? value) => setField<int>('bloqueado', value);

  String? get formapago => getField<String>('formapago');
  set formapago(String? value) => setField<String>('formapago', value);

  int? get verificado => getField<int>('verificado');
  set verificado(int? value) => setField<int>('verificado', value);

  double? get descuento => getField<double>('descuento');
  set descuento(double? value) => setField<double>('descuento', value);

  String? get codservicio => getField<String>('codservicio');
  set codservicio(String? value) => setField<String>('codservicio', value);

  String? get bodega => getField<String>('bodega');
  set bodega(String? value) => setField<String>('bodega', value);

  String? get umedida => getField<String>('umedida');
  set umedida(String? value) => setField<String>('umedida', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get piva => getField<double>('piva');
  set piva(double? value) => setField<double>('piva', value);

  String? get notaitem => getField<String>('notaitem');
  set notaitem(String? value) => setField<String>('notaitem', value);

  String? get ccosto => getField<String>('ccosto');
  set ccosto(String? value) => setField<String>('ccosto', value);

  String? get fechavenceF => getField<String>('fechavence_f');
  set fechavenceF(String? value) => setField<String>('fechavence_f', value);

  int? get factormov1 => getField<int>('factormov1');
  set factormov1(int? value) => setField<int>('factormov1', value);

  int? get factormov2 => getField<int>('factormov2');
  set factormov2(int? value) => setField<int>('factormov2', value);

  String? get vendedor => getField<String>('vendedor');
  set vendedor(String? value) => setField<String>('vendedor', value);
}
