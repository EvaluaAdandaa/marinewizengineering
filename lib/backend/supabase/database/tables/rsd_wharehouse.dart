import '../database.dart';

class RsdWharehouseTable extends SupabaseTable<RsdWharehouseRow> {
  @override
  String get tableName => 'rsd_wharehouse';

  @override
  RsdWharehouseRow createRow(Map<String, dynamic> data) =>
      RsdWharehouseRow(data);
}

class RsdWharehouseRow extends SupabaseDataRow {
  RsdWharehouseRow(super.data);

  @override
  SupabaseTable get table => RsdWharehouseTable();

  int get warehouseid => getField<int>('warehouseid')!;
  set warehouseid(int value) => setField<int>('warehouseid', value);

  String get whname => getField<String>('whname')!;
  set whname(String value) => setField<String>('whname', value);

  String get whaddress => getField<String>('whaddress')!;
  set whaddress(String value) => setField<String>('whaddress', value);

  String get whcity => getField<String>('whcity')!;
  set whcity(String value) => setField<String>('whcity', value);

  String get whstate => getField<String>('whstate')!;
  set whstate(String value) => setField<String>('whstate', value);

  double get whlat => getField<double>('whlat')!;
  set whlat(double value) => setField<double>('whlat', value);

  double get whlng => getField<double>('whlng')!;
  set whlng(double value) => setField<double>('whlng', value);

  int get supplierid => getField<int>('supplierid')!;
  set supplierid(int value) => setField<int>('supplierid', value);
}
