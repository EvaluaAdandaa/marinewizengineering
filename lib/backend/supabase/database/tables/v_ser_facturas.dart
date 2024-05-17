import '../database.dart';

class VSerFacturasTable extends SupabaseTable<VSerFacturasRow> {
  @override
  String get tableName => 'v_ser_facturas';

  @override
  VSerFacturasRow createRow(Map<String, dynamic> data) => VSerFacturasRow(data);
}

class VSerFacturasRow extends SupabaseDataRow {
  VSerFacturasRow(super.data);

  @override
  SupabaseTable get table => VSerFacturasTable();

  String? get numfactura => getField<String>('numfactura');
  set numfactura(String? value) => setField<String>('numfactura', value);

  DateTime? get fechafactura => getField<DateTime>('fechafactura');
  set fechafactura(DateTime? value) =>
      setField<DateTime>('fechafactura', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get ciudadtercero => getField<String>('ciudadtercero');
  set ciudadtercero(String? value) => setField<String>('ciudadtercero', value);

  String? get nombote => getField<String>('nombote');
  set nombote(String? value) => setField<String>('nombote', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get vlrneto => getField<double>('vlrneto');
  set vlrneto(double? value) => setField<double>('vlrneto', value);

  double? get pdescuento => getField<double>('pdescuento');
  set pdescuento(double? value) => setField<double>('pdescuento', value);

  int? get facid => getField<int>('facid');
  set facid(int? value) => setField<int>('facid', value);

  int? get facdid => getField<int>('facdid');
  set facdid(int? value) => setField<int>('facdid', value);
}
