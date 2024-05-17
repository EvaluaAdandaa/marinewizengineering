import '../database.dart';

class SaasCiaTable extends SupabaseTable<SaasCiaRow> {
  @override
  String get tableName => 'saas_cia';

  @override
  SaasCiaRow createRow(Map<String, dynamic> data) => SaasCiaRow(data);
}

class SaasCiaRow extends SupabaseDataRow {
  SaasCiaRow(super.data);

  @override
  SupabaseTable get table => SaasCiaTable();

  int get saasCiaid => getField<int>('saas_ciaid')!;
  set saasCiaid(int value) => setField<int>('saas_ciaid', value);

  int get saasCueid => getField<int>('saas_cueid')!;
  set saasCueid(int value) => setField<int>('saas_cueid', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get urlweb => getField<String>('urlweb');
  set urlweb(String? value) => setField<String>('urlweb', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  int? get saasPlnid => getField<int>('saas_plnid');
  set saasPlnid(int? value) => setField<int>('saas_plnid', value);

  String? get logonomfichero => getField<String>('logonomfichero');
  set logonomfichero(String? value) =>
      setField<String>('logonomfichero', value);

  String? get logoimagenfichero => getField<String>('logoimagenfichero');
  set logoimagenfichero(String? value) =>
      setField<String>('logoimagenfichero', value);

  int get numeracionxsede => getField<int>('numeracionxsede')!;
  set numeracionxsede(int value) => setField<int>('numeracionxsede', value);
}
