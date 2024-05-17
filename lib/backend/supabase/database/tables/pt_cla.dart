import '../database.dart';

class PtClaTable extends SupabaseTable<PtClaRow> {
  @override
  String get tableName => 'pt_cla';

  @override
  PtClaRow createRow(Map<String, dynamic> data) => PtClaRow(data);
}

class PtClaRow extends SupabaseDataRow {
  PtClaRow(super.data);

  @override
  SupabaseTable get table => PtClaTable();

  int get ptClaid => getField<int>('pt_claid')!;
  set ptClaid(int value) => setField<int>('pt_claid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get nomclasificador => getField<String>('nomclasificador');
  set nomclasificador(String? value) =>
      setField<String>('nomclasificador', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);
}
