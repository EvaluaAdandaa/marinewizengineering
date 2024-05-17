import '../database.dart';

class PtEntTable extends SupabaseTable<PtEntRow> {
  @override
  String get tableName => 'pt_ent';

  @override
  PtEntRow createRow(Map<String, dynamic> data) => PtEntRow(data);
}

class PtEntRow extends SupabaseDataRow {
  PtEntRow(super.data);

  @override
  SupabaseTable get table => PtEntTable();

  int get ptEntid => getField<int>('pt_entid')!;
  set ptEntid(int value) => setField<int>('pt_entid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get codentidad => getField<String>('codentidad');
  set codentidad(String? value) => setField<String>('codentidad', value);

  String? get nomentidad => getField<String>('nomentidad');
  set nomentidad(String? value) => setField<String>('nomentidad', value);
}
