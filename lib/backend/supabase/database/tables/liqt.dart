import '../database.dart';

class LiqtTable extends SupabaseTable<LiqtRow> {
  @override
  String get tableName => 'liqt';

  @override
  LiqtRow createRow(Map<String, dynamic> data) => LiqtRow(data);
}

class LiqtRow extends SupabaseDataRow {
  LiqtRow(super.data);

  @override
  SupabaseTable get table => LiqtTable();

  int get liqtid => getField<int>('liqtid')!;
  set liqtid(int value) => setField<int>('liqtid', value);

  int? get liqid => getField<int>('liqid');
  set liqid(int? value) => setField<int>('liqid', value);

  String? get propiedad => getField<String>('propiedad');
  set propiedad(String? value) => setField<String>('propiedad', value);

  int? get aspas => getField<int>('aspas');
  set aspas(int? value) => setField<int>('aspas', value);

  double? get diametro => getField<double>('diametro');
  set diametro(double? value) => setField<double>('diametro', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get umedida => getField<String>('umedida');
  set umedida(String? value) => setField<String>('umedida', value);
}
