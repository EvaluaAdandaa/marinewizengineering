import '../database.dart';

class PtEntpvTable extends SupabaseTable<PtEntpvRow> {
  @override
  String get tableName => 'pt_entpv';

  @override
  PtEntpvRow createRow(Map<String, dynamic> data) => PtEntpvRow(data);
}

class PtEntpvRow extends SupabaseDataRow {
  PtEntpvRow(super.data);

  @override
  SupabaseTable get table => PtEntpvTable();

  int get ptEntpvid => getField<int>('pt_entpvid')!;
  set ptEntpvid(int value) => setField<int>('pt_entpvid', value);

  int? get ptEntpid => getField<int>('pt_entpid');
  set ptEntpid(int? value) => setField<int>('pt_entpid', value);

  String? get codvalor => getField<String>('codvalor');
  set codvalor(String? value) => setField<String>('codvalor', value);

  String? get nompvalor => getField<String>('nompvalor');
  set nompvalor(String? value) => setField<String>('nompvalor', value);

  int? get valornum1 => getField<int>('valornum1');
  set valornum1(int? value) => setField<int>('valornum1', value);

  int? get valornum2 => getField<int>('valornum2');
  set valornum2(int? value) => setField<int>('valornum2', value);

  String? get textopvalor => getField<String>('textopvalor');
  set textopvalor(String? value) => setField<String>('textopvalor', value);

  String? get textopvrtf => getField<String>('textopvrtf');
  set textopvrtf(String? value) => setField<String>('textopvrtf', value);
}
