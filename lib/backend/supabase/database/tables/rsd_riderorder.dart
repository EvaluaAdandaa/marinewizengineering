import '../database.dart';

class RsdRiderorderTable extends SupabaseTable<RsdRiderorderRow> {
  @override
  String get tableName => 'rsd_riderorder';

  @override
  RsdRiderorderRow createRow(Map<String, dynamic> data) =>
      RsdRiderorderRow(data);
}

class RsdRiderorderRow extends SupabaseDataRow {
  RsdRiderorderRow(super.data);

  @override
  SupabaseTable get table => RsdRiderorderTable();

  int get riderorderid => getField<int>('riderorderid')!;
  set riderorderid(int value) => setField<int>('riderorderid', value);

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  int? get riderid => getField<int>('riderid');
  set riderid(int? value) => setField<int>('riderid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);
}
