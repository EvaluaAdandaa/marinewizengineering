import '../database.dart';

class PlforTable extends SupabaseTable<PlforRow> {
  @override
  String get tableName => 'plfor';

  @override
  PlforRow createRow(Map<String, dynamic> data) => PlforRow(data);
}

class PlforRow extends SupabaseDataRow {
  PlforRow(super.data);

  @override
  SupabaseTable get table => PlforTable();

  int get plforid => getField<int>('plforid')!;
  set plforid(int value) => setField<int>('plforid', value);

  String get codformulario => getField<String>('codformulario')!;
  set codformulario(String value) => setField<String>('codformulario', value);

  String get nomformulario => getField<String>('nomformulario')!;
  set nomformulario(String value) => setField<String>('nomformulario', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get unico => getField<int>('unico');
  set unico(int? value) => setField<int>('unico', value);

  int? get ambito => getField<int>('ambito');
  set ambito(int? value) => setField<int>('ambito', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  DateTime? get fechacreacion => getField<DateTime>('fechacreacion');
  set fechacreacion(DateTime? value) =>
      setField<DateTime>('fechacreacion', value);
}
