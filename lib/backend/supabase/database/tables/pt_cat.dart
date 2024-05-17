import '../database.dart';

class PtCatTable extends SupabaseTable<PtCatRow> {
  @override
  String get tableName => 'pt_cat';

  @override
  PtCatRow createRow(Map<String, dynamic> data) => PtCatRow(data);
}

class PtCatRow extends SupabaseDataRow {
  PtCatRow(super.data);

  @override
  SupabaseTable get table => PtCatTable();

  int get ptCatid => getField<int>('pt_catid')!;
  set ptCatid(int value) => setField<int>('pt_catid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get nomcategoria => getField<String>('nomcategoria');
  set nomcategoria(String? value) => setField<String>('nomcategoria', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);
}
