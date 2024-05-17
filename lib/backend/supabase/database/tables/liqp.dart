import '../database.dart';

class LiqpTable extends SupabaseTable<LiqpRow> {
  @override
  String get tableName => 'liqp';

  @override
  LiqpRow createRow(Map<String, dynamic> data) => LiqpRow(data);
}

class LiqpRow extends SupabaseDataRow {
  LiqpRow(super.data);

  @override
  SupabaseTable get table => LiqpTable();

  int get liqpid => getField<int>('liqpid')!;
  set liqpid(int value) => setField<int>('liqpid', value);

  int? get liqid => getField<int>('liqid');
  set liqid(int? value) => setField<int>('liqid', value);

  String? get propiedad => getField<String>('propiedad');
  set propiedad(String? value) => setField<String>('propiedad', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  double? get factor => getField<double>('factor');
  set factor(double? value) => setField<double>('factor', value);

  String? get msgimpresion => getField<String>('msgimpresion');
  set msgimpresion(String? value) => setField<String>('msgimpresion', value);
}
