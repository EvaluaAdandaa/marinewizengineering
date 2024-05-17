import '../database.dart';

class UsrTable extends SupabaseTable<UsrRow> {
  @override
  String get tableName => 'usr';

  @override
  UsrRow createRow(Map<String, dynamic> data) => UsrRow(data);
}

class UsrRow extends SupabaseDataRow {
  UsrRow(super.data);

  @override
  SupabaseTable get table => UsrTable();

  int get usrid => getField<int>('usrid')!;
  set usrid(int value) => setField<int>('usrid', value);

  int? get saasCueid => getField<int>('saas_cueid');
  set saasCueid(int? value) => setField<int>('saas_cueid', value);

  String? get identificacion => getField<String>('identificacion');
  set identificacion(String? value) =>
      setField<String>('identificacion', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get movil => getField<String>('movil');
  set movil(String? value) => setField<String>('movil', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get lenguaje => getField<String>('lenguaje');
  set lenguaje(String? value) => setField<String>('lenguaje', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  int? get supervisor => getField<int>('supervisor');
  set supervisor(int? value) => setField<int>('supervisor', value);

  int? get saasCiaidDefault => getField<int>('saas_ciaid_default');
  set saasCiaidDefault(int? value) =>
      setField<int>('saas_ciaid_default', value);

  int? get saasCiasidDefault => getField<int>('saas_ciasid_default');
  set saasCiasidDefault(int? value) =>
      setField<int>('saas_ciasid_default', value);

  int? get elegirsede => getField<int>('elegirsede');
  set elegirsede(int? value) => setField<int>('elegirsede', value);

  int? get nivelusr => getField<int>('nivelusr');
  set nivelusr(int? value) => setField<int>('nivelusr', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get perfil => getField<int>('perfil');
  set perfil(int? value) => setField<int>('perfil', value);
}
