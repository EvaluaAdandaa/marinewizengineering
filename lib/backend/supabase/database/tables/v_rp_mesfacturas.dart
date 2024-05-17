import '../database.dart';

class VRpMesfacturasTable extends SupabaseTable<VRpMesfacturasRow> {
  @override
  String get tableName => 'v_rp_mesfacturas';

  @override
  VRpMesfacturasRow createRow(Map<String, dynamic> data) =>
      VRpMesfacturasRow(data);
}

class VRpMesfacturasRow extends SupabaseDataRow {
  VRpMesfacturasRow(super.data);

  @override
  SupabaseTable get table => VRpMesfacturasTable();

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get qexpedidas => getField<int>('qexpedidas');
  set qexpedidas(int? value) => setField<int>('qexpedidas', value);

  int? get qpagadas => getField<int>('qpagadas');
  set qpagadas(int? value) => setField<int>('qpagadas', value);

  int? get qanuladas => getField<int>('qanuladas');
  set qanuladas(int? value) => setField<int>('qanuladas', value);

  double? get vlrexpedidas => getField<double>('vlrexpedidas');
  set vlrexpedidas(double? value) => setField<double>('vlrexpedidas', value);

  double? get vlrpagadas => getField<double>('vlrpagadas');
  set vlrpagadas(double? value) => setField<double>('vlrpagadas', value);

  double? get vlranuladas => getField<double>('vlranuladas');
  set vlranuladas(double? value) => setField<double>('vlranuladas', value);
}
