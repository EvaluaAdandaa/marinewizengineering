import '../database.dart';

class RpPvEventosfinancierosTable
    extends SupabaseTable<RpPvEventosfinancierosRow> {
  @override
  String get tableName => 'rp_pv_eventosfinancieros';

  @override
  RpPvEventosfinancierosRow createRow(Map<String, dynamic> data) =>
      RpPvEventosfinancierosRow(data);
}

class RpPvEventosfinancierosRow extends SupabaseDataRow {
  RpPvEventosfinancierosRow(super.data);

  @override
  SupabaseTable get table => RpPvEventosfinancierosTable();

  String? get codunidadnegocio => getField<String>('codunidadnegocio');
  set codunidadnegocio(String? value) =>
      setField<String>('codunidadnegocio', value);

  String? get unidadnegocio => getField<String>('unidadnegocio');
  set unidadnegocio(String? value) => setField<String>('unidadnegocio', value);

  String? get eventofinanciero => getField<String>('eventofinanciero');
  set eventofinanciero(String? value) =>
      setField<String>('eventofinanciero', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);
}
