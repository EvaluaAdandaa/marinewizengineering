import '../database.dart';

class VRcajaxoservicioTable extends SupabaseTable<VRcajaxoservicioRow> {
  @override
  String get tableName => 'v_rcajaxoservicio';

  @override
  VRcajaxoservicioRow createRow(Map<String, dynamic> data) =>
      VRcajaxoservicioRow(data);
}

class VRcajaxoservicioRow extends SupabaseDataRow {
  VRcajaxoservicioRow(super.data);

  @override
  SupabaseTable get table => VRcajaxoservicioTable();

  String? get numrecibo => getField<String>('numrecibo');
  set numrecibo(String? value) => setField<String>('numrecibo', value);

  DateTime? get fecharecibo => getField<DateTime>('fecharecibo');
  set fecharecibo(DateTime? value) => setField<DateTime>('fecharecibo', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  double? get vlritem => getField<double>('vlritem');
  set vlritem(double? value) => setField<double>('vlritem', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
