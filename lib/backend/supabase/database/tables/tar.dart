import '../database.dart';

class TarTable extends SupabaseTable<TarRow> {
  @override
  String get tableName => 'tar';

  @override
  TarRow createRow(Map<String, dynamic> data) => TarRow(data);
}

class TarRow extends SupabaseDataRow {
  TarRow(super.data);

  @override
  SupabaseTable get table => TarTable();

  int get tarid => getField<int>('tarid')!;
  set tarid(int value) => setField<int>('tarid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String get codtarifa => getField<String>('codtarifa')!;
  set codtarifa(String value) => setField<String>('codtarifa', value);

  String get nomtarifa => getField<String>('nomtarifa')!;
  set nomtarifa(String value) => setField<String>('nomtarifa', value);
}
