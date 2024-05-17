import '../database.dart';

class VTerReqdocTable extends SupabaseTable<VTerReqdocRow> {
  @override
  String get tableName => 'v_ter_reqdoc';

  @override
  VTerReqdocRow createRow(Map<String, dynamic> data) => VTerReqdocRow(data);
}

class VTerReqdocRow extends SupabaseDataRow {
  VTerReqdocRow(super.data);

  @override
  SupabaseTable get table => VTerReqdocTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nomfichero => getField<String>('nomfichero');
  set nomfichero(String? value) => setField<String>('nomfichero', value);

  String? get imagenfichero => getField<String>('imagenfichero');
  set imagenfichero(String? value) => setField<String>('imagenfichero', value);

  String? get urlfichero => getField<String>('urlfichero');
  set urlfichero(String? value) => setField<String>('urlfichero', value);
}
