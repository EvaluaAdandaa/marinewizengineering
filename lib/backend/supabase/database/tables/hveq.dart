import '../database.dart';

class HveqTable extends SupabaseTable<HveqRow> {
  @override
  String get tableName => 'hveq';

  @override
  HveqRow createRow(Map<String, dynamic> data) => HveqRow(data);
}

class HveqRow extends SupabaseDataRow {
  HveqRow(super.data);

  @override
  SupabaseTable get table => HveqTable();

  int get hveqid => getField<int>('hveqid')!;
  set hveqid(int value) => setField<int>('hveqid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get consecutivo => getField<String>('consecutivo');
  set consecutivo(String? value) => setField<String>('consecutivo', value);

  int? get mplid => getField<int>('mplid');
  set mplid(int? value) => setField<int>('mplid', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);
}
