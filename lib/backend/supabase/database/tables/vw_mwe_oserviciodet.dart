import '../database.dart';

class VwMweOserviciodetTable extends SupabaseTable<VwMweOserviciodetRow> {
  @override
  String get tableName => 'vw_mwe_oserviciodet';

  @override
  VwMweOserviciodetRow createRow(Map<String, dynamic> data) =>
      VwMweOserviciodetRow(data);
}

class VwMweOserviciodetRow extends SupabaseDataRow {
  VwMweOserviciodetRow(super.data);

  @override
  SupabaseTable get table => VwMweOserviciodetTable();

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  int? get secuencia => getField<int>('secuencia');
  set secuencia(int? value) => setField<int>('secuencia', value);

  String? get codservicio => getField<String>('codservicio');
  set codservicio(String? value) => setField<String>('codservicio', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  int? get oseid => getField<int>('oseid');
  set oseid(int? value) => setField<int>('oseid', value);

  int? get generajobticket => getField<int>('generajobticket');
  set generajobticket(int? value) => setField<int>('generajobticket', value);
}
