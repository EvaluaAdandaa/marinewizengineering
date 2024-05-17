import '../database.dart';

class VwTerTable extends SupabaseTable<VwTerRow> {
  @override
  String get tableName => 'vw_ter';

  @override
  VwTerRow createRow(Map<String, dynamic> data) => VwTerRow(data);
}

class VwTerRow extends SupabaseDataRow {
  VwTerRow(super.data);

  @override
  SupabaseTable get table => VwTerTable();

  int? get ctzid => getField<int>('ctzid');
  set ctzid(int? value) => setField<int>('ctzid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get telefonos => getField<String>('telefonos');
  set telefonos(String? value) => setField<String>('telefonos', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  String? get nombrebote => getField<String>('nombrebote');
  set nombrebote(String? value) => setField<String>('nombrebote', value);
}
