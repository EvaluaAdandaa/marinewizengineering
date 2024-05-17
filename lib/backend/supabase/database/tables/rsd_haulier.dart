import '../database.dart';

class RsdHaulierTable extends SupabaseTable<RsdHaulierRow> {
  @override
  String get tableName => 'rsd_haulier';

  @override
  RsdHaulierRow createRow(Map<String, dynamic> data) => RsdHaulierRow(data);
}

class RsdHaulierRow extends SupabaseDataRow {
  RsdHaulierRow(super.data);

  @override
  SupabaseTable get table => RsdHaulierTable();

  int get haulierid => getField<int>('haulierid')!;
  set haulierid(int value) => setField<int>('haulierid', value);

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  int get contactid => getField<int>('contactid')!;
  set contactid(int value) => setField<int>('contactid', value);
}
