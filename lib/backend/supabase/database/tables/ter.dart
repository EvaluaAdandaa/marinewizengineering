import '../database.dart';

class TerTable extends SupabaseTable<TerRow> {
  @override
  String get tableName => 'ter';

  @override
  TerRow createRow(Map<String, dynamic> data) => TerRow(data);
}

class TerRow extends SupabaseDataRow {
  TerRow(super.data);

  @override
  SupabaseTable get table => TerTable();

  int get terid => getField<int>('terid')!;
  set terid(int value) => setField<int>('terid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

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

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  int? get tarid => getField<int>('tarid');
  set tarid(int? value) => setField<int>('tarid', value);

  double? get factor => getField<double>('factor');
  set factor(double? value) => setField<double>('factor', value);

  int? get excepcioniva => getField<int>('excepcioniva');
  set excepcioniva(int? value) => setField<int>('excepcioniva', value);

  String? get referidopor => getField<String>('referidopor');
  set referidopor(String? value) => setField<String>('referidopor', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get teruid => getField<String>('teruid');
  set teruid(String? value) => setField<String>('teruid', value);
}
