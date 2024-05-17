import '../database.dart';

class MpldlTable extends SupabaseTable<MpldlRow> {
  @override
  String get tableName => 'mpldl';

  @override
  MpldlRow createRow(Map<String, dynamic> data) => MpldlRow(data);
}

class MpldlRow extends SupabaseDataRow {
  MpldlRow(super.data);

  @override
  SupabaseTable get table => MpldlTable();

  int get mpldlid => getField<int>('mpldlid')!;
  set mpldlid(int value) => setField<int>('mpldlid', value);

  int? get mpldid => getField<int>('mpldid');
  set mpldid(int? value) => setField<int>('mpldid', value);

  String? get valorlista => getField<String>('valorlista');
  set valorlista(String? value) => setField<String>('valorlista', value);
}
