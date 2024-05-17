import '../database.dart';

class RsdRiderTable extends SupabaseTable<RsdRiderRow> {
  @override
  String get tableName => 'rsd_rider';

  @override
  RsdRiderRow createRow(Map<String, dynamic> data) => RsdRiderRow(data);
}

class RsdRiderRow extends SupabaseDataRow {
  RsdRiderRow(super.data);

  @override
  SupabaseTable get table => RsdRiderTable();

  int get riderid => getField<int>('riderid')!;
  set riderid(int value) => setField<int>('riderid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  int get contactid => getField<int>('contactid')!;
  set contactid(int value) => setField<int>('contactid', value);
}
