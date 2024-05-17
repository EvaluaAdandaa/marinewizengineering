import '../database.dart';

class RsdHaulTable extends SupabaseTable<RsdHaulRow> {
  @override
  String get tableName => 'rsd_haul';

  @override
  RsdHaulRow createRow(Map<String, dynamic> data) => RsdHaulRow(data);
}

class RsdHaulRow extends SupabaseDataRow {
  RsdHaulRow(super.data);

  @override
  SupabaseTable get table => RsdHaulTable();

  int get haulid => getField<int>('haulid')!;
  set haulid(int value) => setField<int>('haulid', value);

  int? get haulierid => getField<int>('haulierid');
  set haulierid(int? value) => setField<int>('haulierid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);
}
