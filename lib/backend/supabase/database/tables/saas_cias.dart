import '../database.dart';

class SaasCiasTable extends SupabaseTable<SaasCiasRow> {
  @override
  String get tableName => 'saas_cias';

  @override
  SaasCiasRow createRow(Map<String, dynamic> data) => SaasCiasRow(data);
}

class SaasCiasRow extends SupabaseDataRow {
  SaasCiasRow(super.data);

  @override
  SupabaseTable get table => SaasCiasTable();

  int get saasCiasid => getField<int>('saas_ciasid')!;
  set saasCiasid(int value) => setField<int>('saas_ciasid', value);

  int get saasCiaid => getField<int>('saas_ciaid')!;
  set saasCiaid(int value) => setField<int>('saas_ciaid', value);

  String? get codsede => getField<String>('codsede');
  set codsede(String? value) => setField<String>('codsede', value);

  String? get nomsede => getField<String>('nomsede');
  set nomsede(String? value) => setField<String>('nomsede', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);
}
