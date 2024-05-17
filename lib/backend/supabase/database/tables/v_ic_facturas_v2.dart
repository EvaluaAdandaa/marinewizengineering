import '../database.dart';

class VIcFacturasV2Table extends SupabaseTable<VIcFacturasV2Row> {
  @override
  String get tableName => 'v_ic_facturas_v2';

  @override
  VIcFacturasV2Row createRow(Map<String, dynamic> data) =>
      VIcFacturasV2Row(data);
}

class VIcFacturasV2Row extends SupabaseDataRow {
  VIcFacturasV2Row(super.data);

  @override
  SupabaseTable get table => VIcFacturasV2Table();

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get tipodoc => getField<String>('tipodoc');
  set tipodoc(String? value) => setField<String>('tipodoc', value);

  String? get prefijo => getField<String>('prefijo');
  set prefijo(String? value) => setField<String>('prefijo', value);

  String? get documentonum => getField<String>('documentonum');
  set documentonum(String? value) => setField<String>('documentonum', value);

  DateTime? get fechafactura => getField<DateTime>('fechafactura');
  set fechafactura(DateTime? value) =>
      setField<DateTime>('fechafactura', value);

  String? get tercerointerno => getField<String>('tercerointerno');
  set tercerointerno(String? value) =>
      setField<String>('tercerointerno', value);

  String? get terceroexterno => getField<String>('terceroexterno');
  set terceroexterno(String? value) =>
      setField<String>('terceroexterno', value);

  String? get notafac => getField<String>('notafac');
  set notafac(String? value) => setField<String>('notafac', value);

  String? get formapago => getField<String>('formapago');
  set formapago(String? value) => setField<String>('formapago', value);

  String? get fechaentregaF => getField<String>('fechaentrega_f');
  set fechaentregaF(String? value) => setField<String>('fechaentrega_f', value);

  String? get prefijodocexterno => getField<String>('prefijodocexterno');
  set prefijodocexterno(String? value) =>
      setField<String>('prefijodocexterno', value);

  String? get numdocexterno => getField<String>('numdocexterno');
  set numdocexterno(String? value) => setField<String>('numdocexterno', value);

  int? get verificado => getField<int>('verificado');
  set verificado(int? value) => setField<int>('verificado', value);

  int? get anulado => getField<int>('anulado');
  set anulado(int? value) => setField<int>('anulado', value);

  String? get encper1 => getField<String>('encper1');
  set encper1(String? value) => setField<String>('encper1', value);

  String? get encper2 => getField<String>('encper2');
  set encper2(String? value) => setField<String>('encper2', value);

  String? get encper3 => getField<String>('encper3');
  set encper3(String? value) => setField<String>('encper3', value);

  String? get encper4 => getField<String>('encper4');
  set encper4(String? value) => setField<String>('encper4', value);

  String? get encper5 => getField<String>('encper5');
  set encper5(String? value) => setField<String>('encper5', value);

  String? get encper6 => getField<String>('encper6');
  set encper6(String? value) => setField<String>('encper6', value);

  String? get encper7 => getField<String>('encper7');
  set encper7(String? value) => setField<String>('encper7', value);

  String? get encper8 => getField<String>('encper8');
  set encper8(String? value) => setField<String>('encper8', value);

  String? get encper9 => getField<String>('encper9');
  set encper9(String? value) => setField<String>('encper9', value);

  String? get encper10 => getField<String>('encper10');
  set encper10(String? value) => setField<String>('encper10', value);

  String? get encper11 => getField<String>('encper11');
  set encper11(String? value) => setField<String>('encper11', value);

  String? get encper12 => getField<String>('encper12');
  set encper12(String? value) => setField<String>('encper12', value);

  String? get encper13 => getField<String>('encper13');
  set encper13(String? value) => setField<String>('encper13', value);

  String? get encper14 => getField<String>('encper14');
  set encper14(String? value) => setField<String>('encper14', value);

  String? get encper15 => getField<String>('encper15');
  set encper15(String? value) => setField<String>('encper15', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);

  String? get clasificacion => getField<String>('clasificacion');
  set clasificacion(String? value) => setField<String>('clasificacion', value);

  String? get detproducto => getField<String>('detproducto');
  set detproducto(String? value) => setField<String>('detproducto', value);

  String? get detbodega => getField<String>('detbodega');
  set detbodega(String? value) => setField<String>('detbodega', value);

  String? get detunidadmedida => getField<String>('detunidadmedida');
  set detunidadmedida(String? value) =>
      setField<String>('detunidadmedida', value);

  int? get detcantidad => getField<int>('detcantidad');
  set detcantidad(int? value) => setField<int>('detcantidad', value);

  double? get detiva => getField<double>('detiva');
  set detiva(double? value) => setField<double>('detiva', value);

  double? get detvlrunitario => getField<double>('detvlrunitario');
  set detvlrunitario(double? value) =>
      setField<double>('detvlrunitario', value);

  double? get detdescuento => getField<double>('detdescuento');
  set detdescuento(double? value) => setField<double>('detdescuento', value);

  String? get detvencimiento => getField<String>('detvencimiento');
  set detvencimiento(String? value) =>
      setField<String>('detvencimiento', value);

  String? get detnota => getField<String>('detnota');
  set detnota(String? value) => setField<String>('detnota', value);

  String? get detcencosto => getField<String>('detcencosto');
  set detcencosto(String? value) => setField<String>('detcencosto', value);

  String? get detpersonalizado1 => getField<String>('detpersonalizado1');
  set detpersonalizado1(String? value) =>
      setField<String>('detpersonalizado1', value);

  String? get detpersonalizado2 => getField<String>('detpersonalizado2');
  set detpersonalizado2(String? value) =>
      setField<String>('detpersonalizado2', value);

  String? get detpersonalizado3 => getField<String>('detpersonalizado3');
  set detpersonalizado3(String? value) =>
      setField<String>('detpersonalizado3', value);

  String? get detpersonalizado4 => getField<String>('detpersonalizado4');
  set detpersonalizado4(String? value) =>
      setField<String>('detpersonalizado4', value);

  String? get detpersonalizado5 => getField<String>('detpersonalizado5');
  set detpersonalizado5(String? value) =>
      setField<String>('detpersonalizado5', value);

  String? get detpersonalizado6 => getField<String>('detpersonalizado6');
  set detpersonalizado6(String? value) =>
      setField<String>('detpersonalizado6', value);

  String? get detpersonalizado7 => getField<String>('detpersonalizado7');
  set detpersonalizado7(String? value) =>
      setField<String>('detpersonalizado7', value);

  String? get detpersonalizado8 => getField<String>('detpersonalizado8');
  set detpersonalizado8(String? value) =>
      setField<String>('detpersonalizado8', value);

  String? get detpersonalizado9 => getField<String>('detpersonalizado9');
  set detpersonalizado9(String? value) =>
      setField<String>('detpersonalizado9', value);

  String? get detpersonalizado10 => getField<String>('detpersonalizado10');
  set detpersonalizado10(String? value) =>
      setField<String>('detpersonalizado10', value);

  String? get detpersonalizado11 => getField<String>('detpersonalizado11');
  set detpersonalizado11(String? value) =>
      setField<String>('detpersonalizado11', value);

  String? get detpersonalizado12 => getField<String>('detpersonalizado12');
  set detpersonalizado12(String? value) =>
      setField<String>('detpersonalizado12', value);

  String? get detpersonalizado13 => getField<String>('detpersonalizado13');
  set detpersonalizado13(String? value) =>
      setField<String>('detpersonalizado13', value);

  String? get detpersonalizado14 => getField<String>('detpersonalizado14');
  set detpersonalizado14(String? value) =>
      setField<String>('detpersonalizado14', value);

  String? get detpersonalizado15 => getField<String>('detpersonalizado15');
  set detpersonalizado15(String? value) =>
      setField<String>('detpersonalizado15', value);

  String? get detcodcencosto => getField<String>('detcodcencosto');
  set detcodcencosto(String? value) =>
      setField<String>('detcodcencosto', value);
}
