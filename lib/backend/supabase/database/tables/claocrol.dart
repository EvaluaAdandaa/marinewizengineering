import '../database.dart';

class ClaocrolTable extends SupabaseTable<ClaocrolRow> {
  @override
  String get tableName => 'claocrol';

  @override
  ClaocrolRow createRow(Map<String, dynamic> data) => ClaocrolRow(data);
}

class ClaocrolRow extends SupabaseDataRow {
  ClaocrolRow(super.data);

  @override
  SupabaseTable get table => ClaocrolTable();

  int get claocrolid => getField<int>('claocrolid')!;
  set claocrolid(int value) => setField<int>('claocrolid', value);

  int? get claocid => getField<int>('claocid');
  set claocid(int? value) => setField<int>('claocid', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);
}
