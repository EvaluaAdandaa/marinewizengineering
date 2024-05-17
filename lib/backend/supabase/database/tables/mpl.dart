import '../database.dart';

class MplTable extends SupabaseTable<MplRow> {
  @override
  String get tableName => 'mpl';

  @override
  MplRow createRow(Map<String, dynamic> data) => MplRow(data);
}

class MplRow extends SupabaseDataRow {
  MplRow(super.data);

  @override
  SupabaseTable get table => MplTable();

  int get mplid => getField<int>('mplid')!;
  set mplid(int value) => setField<int>('mplid', value);

  int get saasCiaid => getField<int>('saas_ciaid')!;
  set saasCiaid(int value) => setField<int>('saas_ciaid', value);

  String? get codplantilla => getField<String>('codplantilla');
  set codplantilla(String? value) => setField<String>('codplantilla', value);

  String? get nomplantilla => getField<String>('nomplantilla');
  set nomplantilla(String? value) => setField<String>('nomplantilla', value);
}
