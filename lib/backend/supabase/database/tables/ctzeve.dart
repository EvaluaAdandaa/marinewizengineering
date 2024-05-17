import '../database.dart';

class CtzeveTable extends SupabaseTable<CtzeveRow> {
  @override
  String get tableName => 'ctzeve';

  @override
  CtzeveRow createRow(Map<String, dynamic> data) => CtzeveRow(data);
}

class CtzeveRow extends SupabaseDataRow {
  CtzeveRow(super.data);

  @override
  SupabaseTable get table => CtzeveTable();

  int get ctzeveid => getField<int>('ctzeveid')!;
  set ctzeveid(int value) => setField<int>('ctzeveid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);

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
