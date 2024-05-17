import '../database.dart';

class TicketTable extends SupabaseTable<TicketRow> {
  @override
  String get tableName => 'ticket';

  @override
  TicketRow createRow(Map<String, dynamic> data) => TicketRow(data);
}

class TicketRow extends SupabaseDataRow {
  TicketRow(super.data);

  @override
  SupabaseTable get table => TicketTable();

  int get ticketid => getField<int>('ticketid')!;
  set ticketid(int value) => setField<int>('ticketid', value);

  DateTime get timeCreated => getField<DateTime>('time_created')!;
  set timeCreated(DateTime value) => setField<DateTime>('time_created', value);

  DateTime get timeLimit => getField<DateTime>('time_limit')!;
  set timeLimit(DateTime value) => setField<DateTime>('time_limit', value);

  DateTime? get timeFinish => getField<DateTime>('time_finish');
  set timeFinish(DateTime? value) => setField<DateTime>('time_finish', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  int get pmworkerspropid => getField<int>('pmworkerspropid')!;
  set pmworkerspropid(int value) => setField<int>('pmworkerspropid', value);

  int get statusdet => getField<int>('statusdet')!;
  set statusdet(int value) => setField<int>('statusdet', value);

  String get subject => getField<String>('subject')!;
  set subject(String value) => setField<String>('subject', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  int get propertiesid => getField<int>('propertiesid')!;
  set propertiesid(int value) => setField<int>('propertiesid', value);
}
