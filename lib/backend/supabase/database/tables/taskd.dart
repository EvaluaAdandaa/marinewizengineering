import '../database.dart';

class TaskdTable extends SupabaseTable<TaskdRow> {
  @override
  String get tableName => 'taskd';

  @override
  TaskdRow createRow(Map<String, dynamic> data) => TaskdRow(data);
}

class TaskdRow extends SupabaseDataRow {
  TaskdRow(super.data);

  @override
  SupabaseTable get table => TaskdTable();

  int get taskdid => getField<int>('taskdid')!;
  set taskdid(int value) => setField<int>('taskdid', value);

  int get taskid => getField<int>('taskid')!;
  set taskid(int value) => setField<int>('taskid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
