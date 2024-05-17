import '../database.dart';

class CajaCcaTable extends SupabaseTable<CajaCcaRow> {
  @override
  String get tableName => 'caja_cca';

  @override
  CajaCcaRow createRow(Map<String, dynamic> data) => CajaCcaRow(data);
}

class CajaCcaRow extends SupabaseDataRow {
  CajaCcaRow(super.data);

  @override
  SupabaseTable get table => CajaCcaTable();

  int get cajaCcaid => getField<int>('caja_ccaid')!;
  set cajaCcaid(int value) => setField<int>('caja_ccaid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get codconcepto => getField<String>('codconcepto');
  set codconcepto(String? value) => setField<String>('codconcepto', value);

  String? get nomconcepto => getField<String>('nomconcepto');
  set nomconcepto(String? value) => setField<String>('nomconcepto', value);

  String? get tipomovimiento => getField<String>('tipomovimiento');
  set tipomovimiento(String? value) =>
      setField<String>('tipomovimiento', value);
}
