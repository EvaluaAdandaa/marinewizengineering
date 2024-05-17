import '../database.dart';

class PtEntpTable extends SupabaseTable<PtEntpRow> {
  @override
  String get tableName => 'pt_entp';

  @override
  PtEntpRow createRow(Map<String, dynamic> data) => PtEntpRow(data);
}

class PtEntpRow extends SupabaseDataRow {
  PtEntpRow(super.data);

  @override
  SupabaseTable get table => PtEntpTable();

  int get ptEntpid => getField<int>('pt_entpid')!;
  set ptEntpid(int value) => setField<int>('pt_entpid', value);

  int get ptEntid => getField<int>('pt_entid')!;
  set ptEntid(int value) => setField<int>('pt_entid', value);

  String? get codpropiedad => getField<String>('codpropiedad');
  set codpropiedad(String? value) => setField<String>('codpropiedad', value);

  String? get nompropiedad => getField<String>('nompropiedad');
  set nompropiedad(String? value) => setField<String>('nompropiedad', value);
}
