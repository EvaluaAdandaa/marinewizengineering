import '../database.dart';

class CajaRcapTable extends SupabaseTable<CajaRcapRow> {
  @override
  String get tableName => 'caja_rcap';

  @override
  CajaRcapRow createRow(Map<String, dynamic> data) => CajaRcapRow(data);
}

class CajaRcapRow extends SupabaseDataRow {
  CajaRcapRow(super.data);

  @override
  SupabaseTable get table => CajaRcapTable();

  int get cajaRcapid => getField<int>('caja_rcapid')!;
  set cajaRcapid(int value) => setField<int>('caja_rcapid', value);

  int? get cajaRcaid => getField<int>('caja_rcaid');
  set cajaRcaid(int? value) => setField<int>('caja_rcaid', value);

  int? get ptEntpvid => getField<int>('pt_entpvid');
  set ptEntpvid(int? value) => setField<int>('pt_entpvid', value);

  String? get numdocumento => getField<String>('numdocumento');
  set numdocumento(String? value) => setField<String>('numdocumento', value);

  double? get vlfpago => getField<double>('vlfpago');
  set vlfpago(double? value) => setField<double>('vlfpago', value);
}
