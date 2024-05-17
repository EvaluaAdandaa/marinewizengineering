import '../database.dart';

class RpPvEventosfinancierosfechaTable
    extends SupabaseTable<RpPvEventosfinancierosfechaRow> {
  @override
  String get tableName => 'rp_pv_eventosfinancierosfecha';

  @override
  RpPvEventosfinancierosfechaRow createRow(Map<String, dynamic> data) =>
      RpPvEventosfinancierosfechaRow(data);
}

class RpPvEventosfinancierosfechaRow extends SupabaseDataRow {
  RpPvEventosfinancierosfechaRow(super.data);

  @override
  SupabaseTable get table => RpPvEventosfinancierosfechaTable();

  String? get claseevento => getField<String>('claseevento');
  set claseevento(String? value) => setField<String>('claseevento', value);

  DateTime? get fechaevento => getField<DateTime>('fechaevento');
  set fechaevento(DateTime? value) => setField<DateTime>('fechaevento', value);

  String? get codunidadnegocio => getField<String>('codunidadnegocio');
  set codunidadnegocio(String? value) =>
      setField<String>('codunidadnegocio', value);

  String? get eventofinanciero => getField<String>('eventofinanciero');
  set eventofinanciero(String? value) =>
      setField<String>('eventofinanciero', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);
}
