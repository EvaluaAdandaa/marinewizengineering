import '../database.dart';

class CiuTable extends SupabaseTable<CiuRow> {
  @override
  String get tableName => 'ciu';

  @override
  CiuRow createRow(Map<String, dynamic> data) => CiuRow(data);
}

class CiuRow extends SupabaseDataRow {
  CiuRow(super.data);

  @override
  SupabaseTable get table => CiuTable();

  int get ciuid => getField<int>('ciuid')!;
  set ciuid(int value) => setField<int>('ciuid', value);

  String? get codciudad => getField<String>('codciudad');
  set codciudad(String? value) => setField<String>('codciudad', value);

  String? get nomciudad => getField<String>('nomciudad');
  set nomciudad(String? value) => setField<String>('nomciudad', value);

  int? get depid => getField<int>('depid');
  set depid(int? value) => setField<int>('depid', value);
}
