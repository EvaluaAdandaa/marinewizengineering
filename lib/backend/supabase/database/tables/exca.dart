import '../database.dart';

class ExcaTable extends SupabaseTable<ExcaRow> {
  @override
  String get tableName => 'exca';

  @override
  ExcaRow createRow(Map<String, dynamic> data) => ExcaRow(data);
}

class ExcaRow extends SupabaseDataRow {
  ExcaRow(super.data);

  @override
  SupabaseTable get table => ExcaTable();

  int get excaid => getField<int>('excaid')!;
  set excaid(int value) => setField<int>('excaid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  DateTime? get fechaespera => getField<DateTime>('fechaespera');
  set fechaespera(DateTime? value) => setField<DateTime>('fechaespera', value);
}
