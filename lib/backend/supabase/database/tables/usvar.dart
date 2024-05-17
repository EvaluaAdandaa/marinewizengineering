import '../database.dart';

class UsvarTable extends SupabaseTable<UsvarRow> {
  @override
  String get tableName => 'usvar';

  @override
  UsvarRow createRow(Map<String, dynamic> data) => UsvarRow(data);
}

class UsvarRow extends SupabaseDataRow {
  UsvarRow(super.data);

  @override
  SupabaseTable get table => UsvarTable();

  int get usvar => getField<int>('usvar')!;
  set usvar(int value) => setField<int>('usvar', value);

  String? get idvariable => getField<String>('idvariable');
  set idvariable(String? value) => setField<String>('idvariable', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get tpVariable => getField<String>('tp_variable');
  set tpVariable(String? value) => setField<String>('tp_variable', value);

  String? get dato => getField<String>('dato');
  set dato(String? value) => setField<String>('dato', value);

  int? get indvigencia => getField<int>('indvigencia');
  set indvigencia(int? value) => setField<int>('indvigencia', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get tabla => getField<String>('tabla');
  set tabla(String? value) => setField<String>('tabla', value);

  String? get campoCodigo => getField<String>('campo_codigo');
  set campoCodigo(String? value) => setField<String>('campo_codigo', value);

  String? get campoDesc => getField<String>('campo_desc');
  set campoDesc(String? value) => setField<String>('campo_desc', value);
}
