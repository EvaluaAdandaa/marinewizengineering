import '../database.dart';

class TgenTable extends SupabaseTable<TgenRow> {
  @override
  String get tableName => 'tgen';

  @override
  TgenRow createRow(Map<String, dynamic> data) => TgenRow(data);
}

class TgenRow extends SupabaseDataRow {
  TgenRow(super.data);

  @override
  SupabaseTable get table => TgenTable();

  int get tgenid => getField<int>('tgenid')!;
  set tgenid(int value) => setField<int>('tgenid', value);

  String get tabla => getField<String>('tabla')!;
  set tabla(String value) => setField<String>('tabla', value);

  String get campo => getField<String>('campo')!;
  set campo(String value) => setField<String>('campo', value);

  String get codigo => getField<String>('codigo')!;
  set codigo(String value) => setField<String>('codigo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get valor1 => getField<double>('valor1');
  set valor1(double? value) => setField<double>('valor1', value);

  String? get dato1 => getField<String>('dato1');
  set dato1(String? value) => setField<String>('dato1', value);

  String? get dato2 => getField<String>('dato2');
  set dato2(String? value) => setField<String>('dato2', value);

  String? get adddato2 => getField<String>('adddato2');
  set adddato2(String? value) => setField<String>('adddato2', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);
}
