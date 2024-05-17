import '../database.dart';

class HveqdlTable extends SupabaseTable<HveqdlRow> {
  @override
  String get tableName => 'hveqdl';

  @override
  HveqdlRow createRow(Map<String, dynamic> data) => HveqdlRow(data);
}

class HveqdlRow extends SupabaseDataRow {
  HveqdlRow(super.data);

  @override
  SupabaseTable get table => HveqdlTable();

  int get hveqdlid => getField<int>('hveqdlid')!;
  set hveqdlid(int value) => setField<int>('hveqdlid', value);

  int? get hveqdid => getField<int>('hveqdid');
  set hveqdid(int? value) => setField<int>('hveqdid', value);

  int? get mpldlid => getField<int>('mpldlid');
  set mpldlid(int? value) => setField<int>('mpldlid', value);

  int? get checkm => getField<int>('checkm');
  set checkm(int? value) => setField<int>('checkm', value);
}
