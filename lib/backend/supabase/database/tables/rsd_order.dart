import '../database.dart';

class RsdOrderTable extends SupabaseTable<RsdOrderRow> {
  @override
  String get tableName => 'rsd_order';

  @override
  RsdOrderRow createRow(Map<String, dynamic> data) => RsdOrderRow(data);
}

class RsdOrderRow extends SupabaseDataRow {
  RsdOrderRow(super.data);

  @override
  SupabaseTable get table => RsdOrderTable();

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  String get clientid => getField<String>('clientid')!;
  set clientid(String value) => setField<String>('clientid', value);

  String get destaddress => getField<String>('destaddress')!;
  set destaddress(String value) => setField<String>('destaddress', value);

  String get destcity => getField<String>('destcity')!;
  set destcity(String value) => setField<String>('destcity', value);

  String get deststate => getField<String>('deststate')!;
  set deststate(String value) => setField<String>('deststate', value);

  double get destlat => getField<double>('destlat')!;
  set destlat(double value) => setField<double>('destlat', value);

  double get destlng => getField<double>('destlng')!;
  set destlng(double value) => setField<double>('destlng', value);

  DateTime? get datecreated => getField<DateTime>('datecreated');
  set datecreated(DateTime? value) => setField<DateTime>('datecreated', value);

  double get ordernettotal => getField<double>('ordernettotal')!;
  set ordernettotal(double value) => setField<double>('ordernettotal', value);

  double? get ordertaxtotal => getField<double>('ordertaxtotal');
  set ordertaxtotal(double? value) => setField<double>('ordertaxtotal', value);

  double? get orderdelivertotal => getField<double>('orderdelivertotal');
  set orderdelivertotal(double? value) =>
      setField<double>('orderdelivertotal', value);

  double? get ordertotalprice => getField<double>('ordertotalprice');
  set ordertotalprice(double? value) =>
      setField<double>('ordertotalprice', value);

  DateTime get estimeddeliver => getField<DateTime>('estimeddeliver')!;
  set estimeddeliver(DateTime value) =>
      setField<DateTime>('estimeddeliver', value);

  int get contactid => getField<int>('contactid')!;
  set contactid(int value) => setField<int>('contactid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);
}
