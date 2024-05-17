import '../database.dart';

class DepTable extends SupabaseTable<DepRow> {
  @override
  String get tableName => 'dep';

  @override
  DepRow createRow(Map<String, dynamic> data) => DepRow(data);
}

class DepRow extends SupabaseDataRow {
  DepRow(super.data);

  @override
  SupabaseTable get table => DepTable();

  int get depid => getField<int>('depid')!;
  set depid(int value) => setField<int>('depid', value);

  String? get coddepartamento => getField<String>('coddepartamento');
  set coddepartamento(String? value) =>
      setField<String>('coddepartamento', value);

  String? get nomdepartamento => getField<String>('nomdepartamento');
  set nomdepartamento(String? value) =>
      setField<String>('nomdepartamento', value);

  int? get paiid => getField<int>('paiid');
  set paiid(int? value) => setField<int>('paiid', value);
}
