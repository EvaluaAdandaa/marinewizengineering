import '../database.dart';

class RsdHaulorderTable extends SupabaseTable<RsdHaulorderRow> {
  @override
  String get tableName => 'rsd_haulorder';

  @override
  RsdHaulorderRow createRow(Map<String, dynamic> data) => RsdHaulorderRow(data);
}

class RsdHaulorderRow extends SupabaseDataRow {
  RsdHaulorderRow(super.data);

  @override
  SupabaseTable get table => RsdHaulorderTable();

  int get haulorderid => getField<int>('haulorderid')!;
  set haulorderid(int value) => setField<int>('haulorderid', value);

  int get haulid => getField<int>('haulid')!;
  set haulid(int value) => setField<int>('haulid', value);

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  DateTime get orderdata => getField<DateTime>('orderdata')!;
  set orderdata(DateTime value) => setField<DateTime>('orderdata', value);
}
