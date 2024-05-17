import '../database.dart';

class TercttTable extends SupabaseTable<TercttRow> {
  @override
  String get tableName => 'terctt';

  @override
  TercttRow createRow(Map<String, dynamic> data) => TercttRow(data);
}

class TercttRow extends SupabaseDataRow {
  TercttRow(super.data);

  @override
  SupabaseTable get table => TercttTable();

  int get tercid => getField<int>('tercid')!;
  set tercid(int value) => setField<int>('tercid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get movil => getField<String>('movil');
  set movil(String? value) => setField<String>('movil', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get ciuid => getField<int>('ciuid');
  set ciuid(int? value) => setField<int>('ciuid', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
