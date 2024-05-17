import '../database.dart';

class SaasCueTable extends SupabaseTable<SaasCueRow> {
  @override
  String get tableName => 'saas_cue';

  @override
  SaasCueRow createRow(Map<String, dynamic> data) => SaasCueRow(data);
}

class SaasCueRow extends SupabaseDataRow {
  SaasCueRow(super.data);

  @override
  SupabaseTable get table => SaasCueTable();

  int get saasCueid => getField<int>('saas_cueid')!;
  set saasCueid(int value) => setField<int>('saas_cueid', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  int? get ptCatid => getField<int>('pt_catid');
  set ptCatid(int? value) => setField<int>('pt_catid', value);

  int? get saasPlnid => getField<int>('saas_plnid');
  set saasPlnid(int? value) => setField<int>('saas_plnid', value);

  String? get identificacion => getField<String>('identificacion');
  set identificacion(String? value) =>
      setField<String>('identificacion', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get movil => getField<String>('movil');
  set movil(String? value) => setField<String>('movil', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  int? get supervisor => getField<int>('supervisor');
  set supervisor(int? value) => setField<int>('supervisor', value);
}
