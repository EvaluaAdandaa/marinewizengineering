import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(super.data);

  @override
  SupabaseTable get table => TaskTable();

  int get taskid => getField<int>('taskid')!;
  set taskid(int value) => setField<int>('taskid', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get taskparent => getField<int>('taskparent');
  set taskparent(int? value) => setField<int>('taskparent', value);

  int? get milestone => getField<int>('milestone');
  set milestone(int? value) => setField<int>('milestone', value);

  int? get project => getField<int>('project');
  set project(int? value) => setField<int>('project', value);

  int? get creator => getField<int>('creator');
  set creator(int? value) => setField<int>('creator', value);

  int? get owner => getField<int>('owner');
  set owner(int? value) => setField<int>('owner', value);

  int? get docorigenid => getField<int>('docorigenid');
  set docorigenid(int? value) => setField<int>('docorigenid', value);

  String? get contextoorigen => getField<String>('contextoorigen');
  set contextoorigen(String? value) =>
      setField<String>('contextoorigen', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  double? get duration => getField<double>('duration');
  set duration(double? value) => setField<double>('duration', value);

  int get durationType => getField<int>('duration_type')!;
  set durationType(int value) => setField<int>('duration_type', value);

  double get hoursWorked => getField<double>('hours_worked')!;
  set hoursWorked(double value) => setField<double>('hours_worked', value);

  DateTime? get reqDate => getField<DateTime>('req_date');
  set reqDate(DateTime? value) => setField<DateTime>('req_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  int? get taskstatus => getField<int>('taskstatus');
  set taskstatus(int? value) => setField<int>('taskstatus', value);

  int? get docreferenciaid => getField<int>('docreferenciaid');
  set docreferenciaid(int? value) => setField<int>('docreferenciaid', value);

  String? get contextoreferencia => getField<String>('contextoreferencia');
  set contextoreferencia(String? value) =>
      setField<String>('contextoreferencia', value);

  int? get priority => getField<int>('priority');
  set priority(int? value) => setField<int>('priority', value);

  int? get percentComplete => getField<int>('percent_complete');
  set percentComplete(int? value) => setField<int>('percent_complete', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get targetBudget => getField<double>('target_budget');
  set targetBudget(double? value) => setField<double>('target_budget', value);

  String? get relatedUrl => getField<String>('related_url');
  set relatedUrl(String? value) => setField<String>('related_url', value);

  int get taskorder => getField<int>('taskorder')!;
  set taskorder(int value) => setField<int>('taskorder', value);

  int get clientPublish => getField<int>('client_publish')!;
  set clientPublish(int value) => setField<int>('client_publish', value);

  int get dynamictask => getField<int>('dynamictask')!;
  set dynamictask(int value) => setField<int>('dynamictask', value);

  int get accesstask => getField<int>('accesstask')!;
  set accesstask(int value) => setField<int>('accesstask', value);

  int get notify => getField<int>('notify')!;
  set notify(int value) => setField<int>('notify', value);

  String? get departments => getField<String>('departments');
  set departments(String? value) => setField<String>('departments', value);

  String? get contacts => getField<String>('contacts');
  set contacts(String? value) => setField<String>('contacts', value);

  String? get custom => getField<String>('custom');
  set custom(String? value) => setField<String>('custom', value);

  String? get respuesta => getField<String>('respuesta');
  set respuesta(String? value) => setField<String>('respuesta', value);

  int get tasktype => getField<int>('tasktype')!;
  set tasktype(int value) => setField<int>('tasktype', value);

  int get updator => getField<int>('updator')!;
  set updator(int value) => setField<int>('updator', value);

  DateTime get created => getField<DateTime>('created')!;
  set created(DateTime value) => setField<DateTime>('created', value);

  DateTime get updated => getField<DateTime>('updated')!;
  set updated(DateTime value) => setField<DateTime>('updated', value);

  int? get depResetDates => getField<int>('dep_reset_dates');
  set depResetDates(int? value) => setField<int>('dep_reset_dates', value);

  int get representsProject => getField<int>('represents_project')!;
  set representsProject(int value) =>
      setField<int>('represents_project', value);

  int get allowOtherUserTasklogs => getField<int>('allow_other_user_tasklogs')!;
  set allowOtherUserTasklogs(int value) =>
      setField<int>('allow_other_user_tasklogs', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get reqid => getField<int>('reqid');
  set reqid(int? value) => setField<int>('reqid', value);
}
