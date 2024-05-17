import '../database.dart';

class CajaCajcTable extends SupabaseTable<CajaCajcRow> {
  @override
  String get tableName => 'caja_cajc';

  @override
  CajaCajcRow createRow(Map<String, dynamic> data) => CajaCajcRow(data);
}

class CajaCajcRow extends SupabaseDataRow {
  CajaCajcRow(super.data);

  @override
  SupabaseTable get table => CajaCajcTable();

  int get cajaCajcid => getField<int>('caja_cajcid')!;
  set cajaCajcid(int value) => setField<int>('caja_cajcid', value);

  int? get cajaCajid => getField<int>('caja_cajid');
  set cajaCajid(int? value) => setField<int>('caja_cajid', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);
}
