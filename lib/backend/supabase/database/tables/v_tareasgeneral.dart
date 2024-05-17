import '../database.dart';

class VTareasgeneralTable extends SupabaseTable<VTareasgeneralRow> {
  @override
  String get tableName => 'v_tareasgeneral';

  @override
  VTareasgeneralRow createRow(Map<String, dynamic> data) =>
      VTareasgeneralRow(data);
}

class VTareasgeneralRow extends SupabaseDataRow {
  VTareasgeneralRow(super.data);

  @override
  SupabaseTable get table => VTareasgeneralTable();

  int? get tareaasignadaa => getField<int>('tareaasignadaa');
  set tareaasignadaa(int? value) => setField<int>('tareaasignadaa', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get nomevento => getField<String>('nomevento');
  set nomevento(String? value) => setField<String>('nomevento', value);

  DateTime? get fechaevento => getField<DateTime>('fechaevento');
  set fechaevento(DateTime? value) => setField<DateTime>('fechaevento', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get tareacumplida => getField<int>('tareacumplida');
  set tareacumplida(int? value) => setField<int>('tareacumplida', value);

  DateTime? get fechacumplida => getField<DateTime>('fechacumplida');
  set fechacumplida(DateTime? value) =>
      setField<DateTime>('fechacumplida', value);

  int? get terevid => getField<int>('terevid');
  set terevid(int? value) => setField<int>('terevid', value);
}
