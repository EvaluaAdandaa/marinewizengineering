import '../database.dart';

class RemidTable extends SupabaseTable<RemidRow> {
  @override
  String get tableName => 'remid';

  @override
  RemidRow createRow(Map<String, dynamic> data) => RemidRow(data);
}

class RemidRow extends SupabaseDataRow {
  RemidRow(super.data);

  @override
  SupabaseTable get table => RemidTable();

  int get remidid => getField<int>('remidid')!;
  set remidid(int value) => setField<int>('remidid', value);

  int? get remiid => getField<int>('remiid');
  set remiid(int? value) => setField<int>('remiid', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
