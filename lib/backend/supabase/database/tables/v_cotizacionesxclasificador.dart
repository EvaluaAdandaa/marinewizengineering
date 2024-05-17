import '../database.dart';

class VCotizacionesxclasificadorTable
    extends SupabaseTable<VCotizacionesxclasificadorRow> {
  @override
  String get tableName => 'v_cotizacionesxclasificador';

  @override
  VCotizacionesxclasificadorRow createRow(Map<String, dynamic> data) =>
      VCotizacionesxclasificadorRow(data);
}

class VCotizacionesxclasificadorRow extends SupabaseDataRow {
  VCotizacionesxclasificadorRow(super.data);

  @override
  SupabaseTable get table => VCotizacionesxclasificadorTable();

  String? get nomclasificador => getField<String>('nomclasificador');
  set nomclasificador(String? value) =>
      setField<String>('nomclasificador', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
