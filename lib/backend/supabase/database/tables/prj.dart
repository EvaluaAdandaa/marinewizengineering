import '../database.dart';

class PrjTable extends SupabaseTable<PrjRow> {
  @override
  String get tableName => 'prj';

  @override
  PrjRow createRow(Map<String, dynamic> data) => PrjRow(data);
}

class PrjRow extends SupabaseDataRow {
  PrjRow(super.data);

  @override
  SupabaseTable get table => PrjTable();

  int get prjid => getField<int>('prjid')!;
  set prjid(int value) => setField<int>('prjid', value);

  int get company => getField<int>('company')!;
  set company(int value) => setField<int>('company', value);

  int get department => getField<int>('department')!;
  set department(int value) => setField<int>('department', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get shortName => getField<String>('short_name');
  set shortName(String? value) => setField<String>('short_name', value);

  int? get owner => getField<int>('owner');
  set owner(int? value) => setField<int>('owner', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get demoUrl => getField<String>('demo_url');
  set demoUrl(String? value) => setField<String>('demo_url', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  DateTime? get actualEndDate => getField<DateTime>('actual_end_date');
  set actualEndDate(DateTime? value) =>
      setField<DateTime>('actual_end_date', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  int? get percentComplete => getField<int>('percent_complete');
  set percentComplete(int? value) => setField<int>('percent_complete', value);

  String? get colorIdentifier => getField<String>('color_identifier');
  set colorIdentifier(String? value) =>
      setField<String>('color_identifier', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get targetBudget => getField<double>('target_budget');
  set targetBudget(double? value) => setField<double>('target_budget', value);

  double? get actualBudget => getField<double>('actual_budget');
  set actualBudget(double? value) => setField<double>('actual_budget', value);

  double get scheduledHours => getField<double>('scheduled_hours')!;
  set scheduledHours(double value) =>
      setField<double>('scheduled_hours', value);

  double get workedHours => getField<double>('worked_hours')!;
  set workedHours(double value) => setField<double>('worked_hours', value);

  int get taskCount => getField<int>('task_count')!;
  set taskCount(int value) => setField<int>('task_count', value);

  int? get creator => getField<int>('creator');
  set creator(int? value) => setField<int>('creator', value);

  int? get private => getField<int>('private');
  set private(int? value) => setField<int>('private', value);

  String? get departments => getField<String>('departments');
  set departments(String? value) => setField<String>('departments', value);

  String? get contacts => getField<String>('contacts');
  set contacts(String? value) => setField<String>('contacts', value);

  int? get priority => getField<int>('priority');
  set priority(int? value) => setField<int>('priority', value);

  int get type => getField<int>('type')!;
  set type(int value) => setField<int>('type', value);

  DateTime? get keydate => getField<DateTime>('keydate');
  set keydate(DateTime? value) => setField<DateTime>('keydate', value);

  int? get keydatePos => getField<int>('keydate_pos');
  set keydatePos(int? value) => setField<int>('keydate_pos', value);

  int? get keytask => getField<int>('keytask');
  set keytask(int? value) => setField<int>('keytask', value);

  int get active => getField<int>('active')!;
  set active(int value) => setField<int>('active', value);

  int get originalParent => getField<int>('original_parent')!;
  set originalParent(int value) => setField<int>('original_parent', value);

  int get parent => getField<int>('parent')!;
  set parent(int value) => setField<int>('parent', value);

  int get empireintSpecial => getField<int>('empireint_special')!;
  set empireintSpecial(int value) => setField<int>('empireint_special', value);

  int get updator => getField<int>('updator')!;
  set updator(int value) => setField<int>('updator', value);

  DateTime? get created => getField<DateTime>('created');
  set created(DateTime? value) => setField<DateTime>('created', value);

  DateTime? get updated => getField<DateTime>('updated');
  set updated(DateTime? value) => setField<DateTime>('updated', value);

  String get statusComment => getField<String>('status_comment')!;
  set statusComment(String value) => setField<String>('status_comment', value);

  int? get subpriority => getField<int>('subpriority');
  set subpriority(int? value) => setField<int>('subpriority', value);

  DateTime? get endDateAdjusted => getField<DateTime>('end_date_adjusted');
  set endDateAdjusted(DateTime? value) =>
      setField<DateTime>('end_date_adjusted', value);

  int get endDateAdjustedUser => getField<int>('end_date_adjusted_user')!;
  set endDateAdjustedUser(int value) =>
      setField<int>('end_date_adjusted_user', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  int get lastTask => getField<int>('last_task')!;
  set lastTask(int value) => setField<int>('last_task', value);
}
