import '../database.dart';

class PlforcaoTable extends SupabaseTable<PlforcaoRow> {
  @override
  String get tableName => 'plforcao';

  @override
  PlforcaoRow createRow(Map<String, dynamic> data) => PlforcaoRow(data);
}

class PlforcaoRow extends SupabaseDataRow {
  PlforcaoRow(super.data);

  @override
  SupabaseTable get table => PlforcaoTable();

  int get plforcaoid => getField<int>('plforcaoid')!;
  set plforcaoid(int value) => setField<int>('plforcaoid', value);

  int get plforcaid => getField<int>('plforcaid')!;
  set plforcaid(int value) => setField<int>('plforcaid', value);

  int get secuencia => getField<int>('secuencia')!;
  set secuencia(int value) => setField<int>('secuencia', value);

  String get nomvalor => getField<String>('nomvalor')!;
  set nomvalor(String value) => setField<String>('nomvalor', value);

  int? get reqobs => getField<int>('reqobs');
  set reqobs(int? value) => setField<int>('reqobs', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);
}
