import '../database.dart';

class VSerCotizacionesTable extends SupabaseTable<VSerCotizacionesRow> {
  @override
  String get tableName => 'v_ser_cotizaciones';

  @override
  VSerCotizacionesRow createRow(Map<String, dynamic> data) =>
      VSerCotizacionesRow(data);
}

class VSerCotizacionesRow extends SupabaseDataRow {
  VSerCotizacionesRow(super.data);

  @override
  SupabaseTable get table => VSerCotizacionesTable();

  String? get numcotizacion => getField<String>('numcotizacion');
  set numcotizacion(String? value) => setField<String>('numcotizacion', value);

  DateTime? get fechacotizacion => getField<DateTime>('fechacotizacion');
  set fechacotizacion(DateTime? value) =>
      setField<DateTime>('fechacotizacion', value);

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

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);

  int? get ctzdid => getField<int>('ctzdid');
  set ctzdid(int? value) => setField<int>('ctzdid', value);
}
