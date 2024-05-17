import '../database.dart';

class VwOcodTable extends SupabaseTable<VwOcodRow> {
  @override
  String get tableName => 'vw_ocod';

  @override
  VwOcodRow createRow(Map<String, dynamic> data) => VwOcodRow(data);
}

class VwOcodRow extends SupabaseDataRow {
  VwOcodRow(super.data);

  @override
  SupabaseTable get table => VwOcodTable();

  int? get ocoid => getField<int>('ocoid');
  set ocoid(int? value) => setField<int>('ocoid', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrunitario => getField<double>('vlrunitario');
  set vlrunitario(double? value) => setField<double>('vlrunitario', value);

  double? get vlriva => getField<double>('vlriva');
  set vlriva(double? value) => setField<double>('vlriva', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);
}
