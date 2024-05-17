import '../database.dart';

class BotevTable extends SupabaseTable<BotevRow> {
  @override
  String get tableName => 'botev';

  @override
  BotevRow createRow(Map<String, dynamic> data) => BotevRow(data);
}

class BotevRow extends SupabaseDataRow {
  BotevRow(super.data);

  @override
  SupabaseTable get table => BotevTable();

  int get botevid => getField<int>('botevid')!;
  set botevid(int value) => setField<int>('botevid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get ptEveid => getField<int>('pt_eveid');
  set ptEveid(int? value) => setField<int>('pt_eveid', value);

  DateTime? get fechaevento => getField<DateTime>('fechaevento');
  set fechaevento(DateTime? value) => setField<DateTime>('fechaevento', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  int? get gentarea => getField<int>('gentarea');
  set gentarea(int? value) => setField<int>('gentarea', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);
}
