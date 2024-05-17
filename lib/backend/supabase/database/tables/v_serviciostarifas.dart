import '../database.dart';

class VServiciostarifasTable extends SupabaseTable<VServiciostarifasRow> {
  @override
  String get tableName => 'v_serviciostarifas';

  @override
  VServiciostarifasRow createRow(Map<String, dynamic> data) =>
      VServiciostarifasRow(data);
}

class VServiciostarifasRow extends SupabaseDataRow {
  VServiciostarifasRow(super.data);

  @override
  SupabaseTable get table => VServiciostarifasTable();

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  String? get codservicio => getField<String>('codservicio');
  set codservicio(String? value) => setField<String>('codservicio', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
