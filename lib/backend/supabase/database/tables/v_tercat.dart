import '../database.dart';

class VTercatTable extends SupabaseTable<VTercatRow> {
  @override
  String get tableName => 'v_tercat';

  @override
  VTercatRow createRow(Map<String, dynamic> data) => VTercatRow(data);
}

class VTercatRow extends SupabaseDataRow {
  VTercatRow(super.data);

  @override
  SupabaseTable get table => VTercatTable();

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  String? get nomcategoria => getField<String>('nomcategoria');
  set nomcategoria(String? value) => setField<String>('nomcategoria', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);
}
