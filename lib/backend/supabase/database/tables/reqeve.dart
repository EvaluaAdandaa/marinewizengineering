import '../database.dart';

class ReqeveTable extends SupabaseTable<ReqeveRow> {
  @override
  String get tableName => 'reqeve';

  @override
  ReqeveRow createRow(Map<String, dynamic> data) => ReqeveRow(data);
}

class ReqeveRow extends SupabaseDataRow {
  ReqeveRow(super.data);

  @override
  SupabaseTable get table => ReqeveTable();

  int get reqeveid => getField<int>('reqeveid')!;
  set reqeveid(int value) => setField<int>('reqeveid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get reqid => getField<int>('reqid');
  set reqid(int? value) => setField<int>('reqid', value);

  int? get ptEveid => getField<int>('pt_eveid');
  set ptEveid(int? value) => setField<int>('pt_eveid', value);

  DateTime? get fechaevento => getField<DateTime>('fechaevento');
  set fechaevento(DateTime? value) => setField<DateTime>('fechaevento', value);

  int? get gentarea => getField<int>('gentarea');
  set gentarea(int? value) => setField<int>('gentarea', value);

  int? get tareaasignadaa => getField<int>('tareaasignadaa');
  set tareaasignadaa(int? value) => setField<int>('tareaasignadaa', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  int? get tareacumplida => getField<int>('tareacumplida');
  set tareacumplida(int? value) => setField<int>('tareacumplida', value);

  DateTime? get fechacumplida => getField<DateTime>('fechacumplida');
  set fechacumplida(DateTime? value) =>
      setField<DateTime>('fechacumplida', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);
}
