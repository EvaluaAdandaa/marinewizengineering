import '../database.dart';

class MpldtTable extends SupabaseTable<MpldtRow> {
  @override
  String get tableName => 'mpldt';

  @override
  MpldtRow createRow(Map<String, dynamic> data) => MpldtRow(data);
}

class MpldtRow extends SupabaseDataRow {
  MpldtRow(super.data);

  @override
  SupabaseTable get table => MpldtTable();

  int get mpldtid => getField<int>('mpldtid')!;
  set mpldtid(int value) => setField<int>('mpldtid', value);

  int? get mpldid => getField<int>('mpldid');
  set mpldid(int? value) => setField<int>('mpldid', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
