import '../database.dart';

class TerclaTable extends SupabaseTable<TerclaRow> {
  @override
  String get tableName => 'tercla';

  @override
  TerclaRow createRow(Map<String, dynamic> data) => TerclaRow(data);
}

class TerclaRow extends SupabaseDataRow {
  TerclaRow(super.data);

  @override
  SupabaseTable get table => TerclaTable();

  int get terclaid => getField<int>('terclaid')!;
  set terclaid(int value) => setField<int>('terclaid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get ptClaid => getField<int>('pt_claid');
  set ptClaid(int? value) => setField<int>('pt_claid', value);
}
