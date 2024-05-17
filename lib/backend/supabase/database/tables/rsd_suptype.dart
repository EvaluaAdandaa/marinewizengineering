import '../database.dart';

class RsdSuptypeTable extends SupabaseTable<RsdSuptypeRow> {
  @override
  String get tableName => 'rsd_suptype';

  @override
  RsdSuptypeRow createRow(Map<String, dynamic> data) => RsdSuptypeRow(data);
}

class RsdSuptypeRow extends SupabaseDataRow {
  RsdSuptypeRow(super.data);

  @override
  SupabaseTable get table => RsdSuptypeTable();

  int get suptypeid => getField<int>('suptypeid')!;
  set suptypeid(int value) => setField<int>('suptypeid', value);

  String get short => getField<String>('short')!;
  set short(String value) => setField<String>('short', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
