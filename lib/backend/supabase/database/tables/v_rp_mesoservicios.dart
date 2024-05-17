import '../database.dart';

class VRpMesoserviciosTable extends SupabaseTable<VRpMesoserviciosRow> {
  @override
  String get tableName => 'v_rp_mesoservicios';

  @override
  VRpMesoserviciosRow createRow(Map<String, dynamic> data) =>
      VRpMesoserviciosRow(data);
}

class VRpMesoserviciosRow extends SupabaseDataRow {
  VRpMesoserviciosRow(super.data);

  @override
  SupabaseTable get table => VRpMesoserviciosTable();

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get qencurso => getField<int>('qencurso');
  set qencurso(int? value) => setField<int>('qencurso', value);

  int? get qfinalizadas => getField<int>('qfinalizadas');
  set qfinalizadas(int? value) => setField<int>('qfinalizadas', value);

  int? get qfacturadas => getField<int>('qfacturadas');
  set qfacturadas(int? value) => setField<int>('qfacturadas', value);

  double? get vlrencurso => getField<double>('vlrencurso');
  set vlrencurso(double? value) => setField<double>('vlrencurso', value);

  double? get vlrfinalizadas => getField<double>('vlrfinalizadas');
  set vlrfinalizadas(double? value) =>
      setField<double>('vlrfinalizadas', value);

  double? get vlrfacturadas => getField<double>('vlrfacturadas');
  set vlrfacturadas(double? value) => setField<double>('vlrfacturadas', value);
}
