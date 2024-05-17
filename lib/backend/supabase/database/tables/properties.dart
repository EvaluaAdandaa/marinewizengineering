import '../database.dart';

class PropertiesTable extends SupabaseTable<PropertiesRow> {
  @override
  String get tableName => 'properties';

  @override
  PropertiesRow createRow(Map<String, dynamic> data) => PropertiesRow(data);
}

class PropertiesRow extends SupabaseDataRow {
  PropertiesRow(super.data);

  @override
  SupabaseTable get table => PropertiesTable();

  int get propertiesid => getField<int>('propertiesid')!;
  set propertiesid(int value) => setField<int>('propertiesid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get propertyownersid => getField<int>('propertyownersid');
  set propertyownersid(int? value) => setField<int>('propertyownersid', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  double get lat => getField<double>('lat')!;
  set lat(double value) => setField<double>('lat', value);

  double get lon => getField<double>('lon')!;
  set lon(double value) => setField<double>('lon', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  int get pmadminsid => getField<int>('pmadminsid')!;
  set pmadminsid(int value) => setField<int>('pmadminsid', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String get statecode => getField<String>('statecode')!;
  set statecode(String value) => setField<String>('statecode', value);

  int get contactsid => getField<int>('contactsid')!;
  set contactsid(int value) => setField<int>('contactsid', value);

  dynamic get keys => getField<dynamic>('keys');
  set keys(dynamic value) => setField<dynamic>('keys', value);
}
