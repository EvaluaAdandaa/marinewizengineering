import '../database.dart';

class ClaocTable extends SupabaseTable<ClaocRow> {
  @override
  String get tableName => 'claoc';

  @override
  ClaocRow createRow(Map<String, dynamic> data) => ClaocRow(data);
}

class ClaocRow extends SupabaseDataRow {
  ClaocRow(super.data);

  @override
  SupabaseTable get table => ClaocTable();

  int get claocid => getField<int>('claocid')!;
  set claocid(int value) => setField<int>('claocid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get codclaseoc => getField<String>('codclaseoc');
  set codclaseoc(String? value) => setField<String>('codclaseoc', value);

  String? get nomclaseoc => getField<String>('nomclaseoc');
  set nomclaseoc(String? value) => setField<String>('nomclaseoc', value);

  int? get usridautoriza1 => getField<int>('usridautoriza1');
  set usridautoriza1(int? value) => setField<int>('usridautoriza1', value);

  int? get usridautoriza2 => getField<int>('usridautoriza2');
  set usridautoriza2(int? value) => setField<int>('usridautoriza2', value);

  int? get reqautoriza1 => getField<int>('reqautoriza1');
  set reqautoriza1(int? value) => setField<int>('reqautoriza1', value);

  int? get reqautoriza2 => getField<int>('reqautoriza2');
  set reqautoriza2(int? value) => setField<int>('reqautoriza2', value);
}
