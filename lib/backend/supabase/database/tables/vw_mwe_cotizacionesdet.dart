import '../database.dart';

class VwMweCotizacionesdetTable extends SupabaseTable<VwMweCotizacionesdetRow> {
  @override
  String get tableName => 'vw_mwe_cotizacionesdet';

  @override
  VwMweCotizacionesdetRow createRow(Map<String, dynamic> data) =>
      VwMweCotizacionesdetRow(data);
}

class VwMweCotizacionesdetRow extends SupabaseDataRow {
  VwMweCotizacionesdetRow(super.data);

  @override
  SupabaseTable get table => VwMweCotizacionesdetTable();

  int? get ctzdid => getField<int>('ctzdid');
  set ctzdid(int? value) => setField<int>('ctzdid', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);

  String? get codservicio => getField<String>('codservicio');
  set codservicio(String? value) => setField<String>('codservicio', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);
}
