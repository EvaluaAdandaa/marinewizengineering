import '../database.dart';

class RsdVRiderordTable extends SupabaseTable<RsdVRiderordRow> {
  @override
  String get tableName => 'rsd_v_riderord';

  @override
  RsdVRiderordRow createRow(Map<String, dynamic> data) => RsdVRiderordRow(data);
}

class RsdVRiderordRow extends SupabaseDataRow {
  RsdVRiderordRow(super.data);

  @override
  SupabaseTable get table => RsdVRiderordTable();

  int? get riderorderid => getField<int>('riderorderid');
  set riderorderid(int? value) => setField<int>('riderorderid', value);

  int? get orderid => getField<int>('orderid');
  set orderid(int? value) => setField<int>('orderid', value);

  int? get riderid => getField<int>('riderid');
  set riderid(int? value) => setField<int>('riderid', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get contactname => getField<String>('contactname');
  set contactname(String? value) => setField<String>('contactname', value);

  String? get contacttel => getField<String>('contacttel');
  set contacttel(String? value) => setField<String>('contacttel', value);

  String? get destaddress => getField<String>('destaddress');
  set destaddress(String? value) => setField<String>('destaddress', value);

  String? get destcity => getField<String>('destcity');
  set destcity(String? value) => setField<String>('destcity', value);

  String? get deststate => getField<String>('deststate');
  set deststate(String? value) => setField<String>('deststate', value);

  double? get destlat => getField<double>('destlat');
  set destlat(double? value) => setField<double>('destlat', value);

  double? get destlng => getField<double>('destlng');
  set destlng(double? value) => setField<double>('destlng', value);
}
