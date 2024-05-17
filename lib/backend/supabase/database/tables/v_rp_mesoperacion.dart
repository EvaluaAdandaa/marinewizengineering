import '../database.dart';

class VRpMesoperacionTable extends SupabaseTable<VRpMesoperacionRow> {
  @override
  String get tableName => 'v_rp_mesoperacion';

  @override
  VRpMesoperacionRow createRow(Map<String, dynamic> data) =>
      VRpMesoperacionRow(data);
}

class VRpMesoperacionRow extends SupabaseDataRow {
  VRpMesoperacionRow(super.data);

  @override
  SupabaseTable get table => VRpMesoperacionTable();

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);
}
