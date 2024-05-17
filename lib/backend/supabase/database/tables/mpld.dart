import '../database.dart';

class MpldTable extends SupabaseTable<MpldRow> {
  @override
  String get tableName => 'mpld';

  @override
  MpldRow createRow(Map<String, dynamic> data) => MpldRow(data);
}

class MpldRow extends SupabaseDataRow {
  MpldRow(super.data);

  @override
  SupabaseTable get table => MpldTable();

  int get mpldid => getField<int>('mpldid')!;
  set mpldid(int value) => setField<int>('mpldid', value);

  int? get mplid => getField<int>('mplid');
  set mplid(int? value) => setField<int>('mplid', value);

  int get secuencia => getField<int>('secuencia')!;
  set secuencia(int value) => setField<int>('secuencia', value);

  String? get nomcampo => getField<String>('nomcampo');
  set nomcampo(String? value) => setField<String>('nomcampo', value);

  int? get tipocampo => getField<int>('tipocampo');
  set tipocampo(int? value) => setField<int>('tipocampo', value);

  String? get nomtabla => getField<String>('nomtabla');
  set nomtabla(String? value) => setField<String>('nomtabla', value);

  String? get camporetornar => getField<String>('camporetornar');
  set camporetornar(String? value) => setField<String>('camporetornar', value);

  String? get campomostrar => getField<String>('campomostrar');
  set campomostrar(String? value) => setField<String>('campomostrar', value);

  int? get mayusculas => getField<int>('mayusculas');
  set mayusculas(int? value) => setField<int>('mayusculas', value);

  int? get capitalize => getField<int>('capitalize');
  set capitalize(int? value) => setField<int>('capitalize', value);

  int? get requerido => getField<int>('requerido');
  set requerido(int? value) => setField<int>('requerido', value);

  String? get default1 => getField<String>('default1');
  set default1(String? value) => setField<String>('default1', value);

  int? get possigcampo => getField<int>('possigcampo');
  set possigcampo(int? value) => setField<int>('possigcampo', value);

  int? get ancho => getField<int>('ancho');
  set ancho(int? value) => setField<int>('ancho', value);

  int? get alto => getField<int>('alto');
  set alto(int? value) => setField<int>('alto', value);

  String? get formato => getField<String>('formato');
  set formato(String? value) => setField<String>('formato', value);
}
