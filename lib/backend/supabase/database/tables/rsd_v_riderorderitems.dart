import '../database.dart';

class RsdVRiderorderitemsTable extends SupabaseTable<RsdVRiderorderitemsRow> {
  @override
  String get tableName => 'rsd_v_riderorderitems';

  @override
  RsdVRiderorderitemsRow createRow(Map<String, dynamic> data) =>
      RsdVRiderorderitemsRow(data);
}

class RsdVRiderorderitemsRow extends SupabaseDataRow {
  RsdVRiderorderitemsRow(super.data);

  @override
  SupabaseTable get table => RsdVRiderorderitemsTable();

  int? get riderorderid => getField<int>('riderorderid');
  set riderorderid(int? value) => setField<int>('riderorderid', value);

  int? get orderid => getField<int>('orderid');
  set orderid(int? value) => setField<int>('orderid', value);

  int? get riderid => getField<int>('riderid');
  set riderid(int? value) => setField<int>('riderid', value);

  int? get orderitemid => getField<int>('orderitemid');
  set orderitemid(int? value) => setField<int>('orderitemid', value);

  int? get warehouseid => getField<int>('warehouseid');
  set warehouseid(int? value) => setField<int>('warehouseid', value);

  String? get whaddress => getField<String>('whaddress');
  set whaddress(String? value) => setField<String>('whaddress', value);

  String? get itemname => getField<String>('itemname');
  set itemname(String? value) => setField<String>('itemname', value);

  double? get itemweight => getField<double>('itemweight');
  set itemweight(double? value) => setField<double>('itemweight', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get whlat => getField<double>('whlat');
  set whlat(double? value) => setField<double>('whlat', value);

  double? get whlng => getField<double>('whlng');
  set whlng(double? value) => setField<double>('whlng', value);

  String? get whname => getField<String>('whname');
  set whname(String? value) => setField<String>('whname', value);
}
