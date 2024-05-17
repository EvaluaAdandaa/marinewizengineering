import '../database.dart';

class VClientesTable extends SupabaseTable<VClientesRow> {
  @override
  String get tableName => 'v_clientes';

  @override
  VClientesRow createRow(Map<String, dynamic> data) => VClientesRow(data);
}

class VClientesRow extends SupabaseDataRow {
  VClientesRow(super.data);

  @override
  SupabaseTable get table => VClientesTable();

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

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

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  int? get tarid => getField<int>('tarid');
  set tarid(int? value) => setField<int>('tarid', value);

  double? get factor => getField<double>('factor');
  set factor(double? value) => setField<double>('factor', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);
}
