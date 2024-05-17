import '../database.dart';

class CajaRcadTable extends SupabaseTable<CajaRcadRow> {
  @override
  String get tableName => 'caja_rcad';

  @override
  CajaRcadRow createRow(Map<String, dynamic> data) => CajaRcadRow(data);
}

class CajaRcadRow extends SupabaseDataRow {
  CajaRcadRow(super.data);

  @override
  SupabaseTable get table => CajaRcadTable();

  int get cajaRcadid => getField<int>('caja_rcadid')!;
  set cajaRcadid(int value) => setField<int>('caja_rcadid', value);

  int? get cajaRcaid => getField<int>('caja_rcaid');
  set cajaRcaid(int? value) => setField<int>('caja_rcaid', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  double? get vlritem => getField<double>('vlritem');
  set vlritem(double? value) => setField<double>('vlritem', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
