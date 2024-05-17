import '../database.dart';

class AafechasTable extends SupabaseTable<AafechasRow> {
  @override
  String get tableName => 'aafechas';

  @override
  AafechasRow createRow(Map<String, dynamic> data) => AafechasRow(data);
}

class AafechasRow extends SupabaseDataRow {
  AafechasRow(super.data);

  @override
  SupabaseTable get table => AafechasTable();

  int get aafechasid => getField<int>('aafechasid')!;
  set aafechasid(int value) => setField<int>('aafechasid', value);

  DateTime? get fechainicial => getField<DateTime>('fechainicial');
  set fechainicial(DateTime? value) =>
      setField<DateTime>('fechainicial', value);

  DateTime? get fechafinal => getField<DateTime>('fechafinal');
  set fechafinal(DateTime? value) => setField<DateTime>('fechafinal', value);
}
