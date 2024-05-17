import '../database.dart';

class VLongitudesTable extends SupabaseTable<VLongitudesRow> {
  @override
  String get tableName => 'v_longitudes';

  @override
  VLongitudesRow createRow(Map<String, dynamic> data) => VLongitudesRow(data);
}

class VLongitudesRow extends SupabaseDataRow {
  VLongitudesRow(super.data);

  @override
  SupabaseTable get table => VLongitudesTable();

  int? get codpoliticaliq => getField<int>('codpoliticaliq');
  set codpoliticaliq(int? value) => setField<int>('codpoliticaliq', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);
}
