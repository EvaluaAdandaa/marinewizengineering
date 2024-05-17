import '../database.dart';

class VRpMescotizacionesTable extends SupabaseTable<VRpMescotizacionesRow> {
  @override
  String get tableName => 'v_rp_mescotizaciones';

  @override
  VRpMescotizacionesRow createRow(Map<String, dynamic> data) =>
      VRpMescotizacionesRow(data);
}

class VRpMescotizacionesRow extends SupabaseDataRow {
  VRpMescotizacionesRow(super.data);

  @override
  SupabaseTable get table => VRpMescotizacionesTable();

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get qpendiente => getField<int>('qpendiente');
  set qpendiente(int? value) => setField<int>('qpendiente', value);

  int? get qautorizadas => getField<int>('qautorizadas');
  set qautorizadas(int? value) => setField<int>('qautorizadas', value);

  int? get qnoautorizadas => getField<int>('qnoautorizadas');
  set qnoautorizadas(int? value) => setField<int>('qnoautorizadas', value);

  double? get vlrpendiente => getField<double>('vlrpendiente');
  set vlrpendiente(double? value) => setField<double>('vlrpendiente', value);

  double? get vlrautorizadas => getField<double>('vlrautorizadas');
  set vlrautorizadas(double? value) =>
      setField<double>('vlrautorizadas', value);

  double? get vlrnoautorizadas => getField<double>('vlrnoautorizadas');
  set vlrnoautorizadas(double? value) =>
      setField<double>('vlrnoautorizadas', value);
}
