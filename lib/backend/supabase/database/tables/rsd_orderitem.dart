import '../database.dart';

class RsdOrderitemTable extends SupabaseTable<RsdOrderitemRow> {
  @override
  String get tableName => 'rsd_orderitem';

  @override
  RsdOrderitemRow createRow(Map<String, dynamic> data) => RsdOrderitemRow(data);
}

class RsdOrderitemRow extends SupabaseDataRow {
  RsdOrderitemRow(super.data);

  @override
  SupabaseTable get table => RsdOrderitemTable();

  int get orderitemid => getField<int>('orderitemid')!;
  set orderitemid(int value) => setField<int>('orderitemid', value);

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  int get itemid => getField<int>('itemid')!;
  set itemid(int value) => setField<int>('itemid', value);

  double get itemcost => getField<double>('itemcost')!;
  set itemcost(double value) => setField<double>('itemcost', value);
}
