import '../database.dart';

class UsCgsTable extends SupabaseTable<UsCgsRow> {
  @override
  String get tableName => 'us_cgs';

  @override
  UsCgsRow createRow(Map<String, dynamic> data) => UsCgsRow(data);
}

class UsCgsRow extends SupabaseDataRow {
  UsCgsRow(super.data);

  @override
  SupabaseTable get table => UsCgsTable();

  int get usCgsid => getField<int>('us_cgsid')!;
  set usCgsid(int value) => setField<int>('us_cgsid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get prefijo => getField<String>('prefijo');
  set prefijo(String? value) => setField<String>('prefijo', value);

  int? get consecutivo => getField<int>('consecutivo');
  set consecutivo(int? value) => setField<int>('consecutivo', value);

  String? get serie => getField<String>('serie');
  set serie(String? value) => setField<String>('serie', value);

  int? get ceroizquierda => getField<int>('ceroizquierda');
  set ceroizquierda(int? value) => setField<int>('ceroizquierda', value);
}
