import '../database.dart';

class VCotizacionesxuninegocioTable
    extends SupabaseTable<VCotizacionesxuninegocioRow> {
  @override
  String get tableName => 'v_cotizacionesxuninegocio';

  @override
  VCotizacionesxuninegocioRow createRow(Map<String, dynamic> data) =>
      VCotizacionesxuninegocioRow(data);
}

class VCotizacionesxuninegocioRow extends SupabaseDataRow {
  VCotizacionesxuninegocioRow(super.data);

  @override
  SupabaseTable get table => VCotizacionesxuninegocioTable();

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);
}
