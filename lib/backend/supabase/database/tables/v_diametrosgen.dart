import '../database.dart';

class VDiametrosgenTable extends SupabaseTable<VDiametrosgenRow> {
  @override
  String get tableName => 'v_diametrosgen';

  @override
  VDiametrosgenRow createRow(Map<String, dynamic> data) =>
      VDiametrosgenRow(data);
}

class VDiametrosgenRow extends SupabaseDataRow {
  VDiametrosgenRow(super.data);

  @override
  SupabaseTable get table => VDiametrosgenTable();

  double? get diametro => getField<double>('diametro');
  set diametro(double? value) => setField<double>('diametro', value);
}
