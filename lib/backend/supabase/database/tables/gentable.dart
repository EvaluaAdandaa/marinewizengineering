import '../database.dart';

class GentableTable extends SupabaseTable<GentableRow> {
  @override
  String get tableName => 'gentable';

  @override
  GentableRow createRow(Map<String, dynamic> data) => GentableRow(data);
}

class GentableRow extends SupabaseDataRow {
  GentableRow(super.data);

  @override
  SupabaseTable get table => GentableTable();

  int get gentableid => getField<int>('gentableid')!;
  set gentableid(int value) => setField<int>('gentableid', value);

  String? get tablename => getField<String>('tablename');
  set tablename(String? value) => setField<String>('tablename', value);

  String? get fieldname => getField<String>('fieldname');
  set fieldname(String? value) => setField<String>('fieldname', value);

  int? get gencode => getField<int>('gencode');
  set gencode(int? value) => setField<int>('gencode', value);

  String? get genname => getField<String>('genname');
  set genname(String? value) => setField<String>('genname', value);

  String? get gennamees => getField<String>('gennamees');
  set gennamees(String? value) => setField<String>('gennamees', value);

  int? get genorder => getField<int>('genorder');
  set genorder(int? value) => setField<int>('genorder', value);

  int get status => getField<int>('status')!;
  set status(int value) => setField<int>('status', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
