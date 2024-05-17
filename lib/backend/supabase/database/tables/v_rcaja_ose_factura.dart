import '../database.dart';

class VRcajaOseFacturaTable extends SupabaseTable<VRcajaOseFacturaRow> {
  @override
  String get tableName => 'v_rcaja_ose_factura';

  @override
  VRcajaOseFacturaRow createRow(Map<String, dynamic> data) =>
      VRcajaOseFacturaRow(data);
}

class VRcajaOseFacturaRow extends SupabaseDataRow {
  VRcajaOseFacturaRow(super.data);

  @override
  SupabaseTable get table => VRcajaOseFacturaTable();

  String? get numrecibo => getField<String>('numrecibo');
  set numrecibo(String? value) => setField<String>('numrecibo', value);

  DateTime? get fecharecibo => getField<DateTime>('fecharecibo');
  set fecharecibo(DateTime? value) => setField<DateTime>('fecharecibo', value);

  double? get vlritem => getField<double>('vlritem');
  set vlritem(double? value) => setField<double>('vlritem', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);
}
