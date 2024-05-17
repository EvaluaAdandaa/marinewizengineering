import '../database.dart';

class TaskcTable extends SupabaseTable<TaskcRow> {
  @override
  String get tableName => 'taskc';

  @override
  TaskcRow createRow(Map<String, dynamic> data) => TaskcRow(data);
}

class TaskcRow extends SupabaseDataRow {
  TaskcRow(super.data);

  @override
  SupabaseTable get table => TaskcTable();

  int get taskcid => getField<int>('taskcid')!;
  set taskcid(int value) => setField<int>('taskcid', value);

  int get taskid => getField<int>('taskid')!;
  set taskid(int value) => setField<int>('taskid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
