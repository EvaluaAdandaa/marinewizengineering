import '../database.dart';

class PtEveTable extends SupabaseTable<PtEveRow> {
  @override
  String get tableName => 'pt_eve';

  @override
  PtEveRow createRow(Map<String, dynamic> data) => PtEveRow(data);
}

class PtEveRow extends SupabaseDataRow {
  PtEveRow(super.data);

  @override
  SupabaseTable get table => PtEveTable();

  int get ptEveid => getField<int>('pt_eveid')!;
  set ptEveid(int value) => setField<int>('pt_eveid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get nomevento => getField<String>('nomevento');
  set nomevento(String? value) => setField<String>('nomevento', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);
}
