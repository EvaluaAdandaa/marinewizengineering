import '../database.dart';

class PtEstTable extends SupabaseTable<PtEstRow> {
  @override
  String get tableName => 'pt_est';

  @override
  PtEstRow createRow(Map<String, dynamic> data) => PtEstRow(data);
}

class PtEstRow extends SupabaseDataRow {
  PtEstRow(super.data);

  @override
  SupabaseTable get table => PtEstTable();

  int get ptEstid => getField<int>('pt_estid')!;
  set ptEstid(int value) => setField<int>('pt_estid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get codestado => getField<String>('codestado');
  set codestado(String? value) => setField<String>('codestado', value);

  String? get nomestado => getField<String>('nomestado');
  set nomestado(String? value) => setField<String>('nomestado', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);
}
