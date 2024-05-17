import '../database.dart';

class UsCgsrTable extends SupabaseTable<UsCgsrRow> {
  @override
  String get tableName => 'us_cgsr';

  @override
  UsCgsrRow createRow(Map<String, dynamic> data) => UsCgsrRow(data);
}

class UsCgsrRow extends SupabaseDataRow {
  UsCgsrRow(super.data);

  @override
  SupabaseTable get table => UsCgsrTable();

  int get usCgsrid => getField<int>('us_cgsrid')!;
  set usCgsrid(int value) => setField<int>('us_cgsrid', value);

  int? get usCgsid => getField<int>('us_cgsid');
  set usCgsid(int? value) => setField<int>('us_cgsid', value);

  String? get msgresolucion => getField<String>('msgresolucion');
  set msgresolucion(String? value) => setField<String>('msgresolucion', value);

  DateTime? get fechaini => getField<DateTime>('fechaini');
  set fechaini(DateTime? value) => setField<DateTime>('fechaini', value);

  DateTime? get fechafin => getField<DateTime>('fechafin');
  set fechafin(DateTime? value) => setField<DateTime>('fechafin', value);

  int? get numinicial => getField<int>('numinicial');
  set numinicial(int? value) => setField<int>('numinicial', value);

  int? get numfinal => getField<int>('numfinal');
  set numfinal(int? value) => setField<int>('numfinal', value);

  int? get activo => getField<int>('activo');
  set activo(int? value) => setField<int>('activo', value);
}
