import '../database.dart';

class RsdVRidercontTable extends SupabaseTable<RsdVRidercontRow> {
  @override
  String get tableName => 'rsd_v_ridercont';

  @override
  RsdVRidercontRow createRow(Map<String, dynamic> data) =>
      RsdVRidercontRow(data);
}

class RsdVRidercontRow extends SupabaseDataRow {
  RsdVRidercontRow(super.data);

  @override
  SupabaseTable get table => RsdVRidercontTable();

  int? get riderid => getField<int>('riderid');
  set riderid(int? value) => setField<int>('riderid', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get contactid => getField<int>('contactid');
  set contactid(int? value) => setField<int>('contactid', value);

  String? get contactname => getField<String>('contactname');
  set contactname(String? value) => setField<String>('contactname', value);
}
