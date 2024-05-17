import '../database.dart';

class FaceveTable extends SupabaseTable<FaceveRow> {
  @override
  String get tableName => 'faceve';

  @override
  FaceveRow createRow(Map<String, dynamic> data) => FaceveRow(data);
}

class FaceveRow extends SupabaseDataRow {
  FaceveRow(super.data);

  @override
  SupabaseTable get table => FaceveTable();

  int get faceveid => getField<int>('faceveid')!;
  set faceveid(int value) => setField<int>('faceveid', value);

  int? get facid => getField<int>('facid');
  set facid(int? value) => setField<int>('facid', value);

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
