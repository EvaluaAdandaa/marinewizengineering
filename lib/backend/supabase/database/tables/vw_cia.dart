import '../database.dart';

class VwCiaTable extends SupabaseTable<VwCiaRow> {
  @override
  String get tableName => 'vw_cia';

  @override
  VwCiaRow createRow(Map<String, dynamic> data) => VwCiaRow(data);
}

class VwCiaRow extends SupabaseDataRow {
  VwCiaRow(super.data);

  @override
  SupabaseTable get table => VwCiaTable();

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get urlweb => getField<String>('urlweb');
  set urlweb(String? value) => setField<String>('urlweb', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  String? get nomdepartamento => getField<String>('nomdepartamento');
  set nomdepartamento(String? value) =>
      setField<String>('nomdepartamento', value);

  String? get nompais => getField<String>('nompais');
  set nompais(String? value) => setField<String>('nompais', value);
}
