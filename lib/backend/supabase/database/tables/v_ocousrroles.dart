import '../database.dart';

class VOcousrrolesTable extends SupabaseTable<VOcousrrolesRow> {
  @override
  String get tableName => 'v_ocousrroles';

  @override
  VOcousrrolesRow createRow(Map<String, dynamic> data) => VOcousrrolesRow(data);
}

class VOcousrrolesRow extends SupabaseDataRow {
  VOcousrrolesRow(super.data);

  @override
  SupabaseTable get table => VOcousrrolesTable();

  int? get claocid => getField<int>('claocid');
  set claocid(int? value) => setField<int>('claocid', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
