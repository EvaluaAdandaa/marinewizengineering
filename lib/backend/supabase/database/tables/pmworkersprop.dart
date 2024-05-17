import '../database.dart';

class PmworkerspropTable extends SupabaseTable<PmworkerspropRow> {
  @override
  String get tableName => 'pmworkersprop';

  @override
  PmworkerspropRow createRow(Map<String, dynamic> data) =>
      PmworkerspropRow(data);
}

class PmworkerspropRow extends SupabaseDataRow {
  PmworkerspropRow(super.data);

  @override
  SupabaseTable get table => PmworkerspropTable();

  int get pmworkerspropid => getField<int>('pmworkerspropid')!;
  set pmworkerspropid(int value) => setField<int>('pmworkerspropid', value);

  int? get propertiesid => getField<int>('propertiesid');
  set propertiesid(int? value) => setField<int>('propertiesid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get pmworkersid => getField<int>('pmworkersid');
  set pmworkersid(int? value) => setField<int>('pmworkersid', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  dynamic get propertynotes => getField<dynamic>('propertynotes');
  set propertynotes(dynamic value) =>
      setField<dynamic>('propertynotes', value);
}
