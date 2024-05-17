import '../database.dart';

class VwMweFormulariosTable extends SupabaseTable<VwMweFormulariosRow> {
  @override
  String get tableName => 'vw_mwe_formularios';

  @override
  VwMweFormulariosRow createRow(Map<String, dynamic> data) =>
      VwMweFormulariosRow(data);
}

class VwMweFormulariosRow extends SupabaseDataRow {
  VwMweFormulariosRow(super.data);

  @override
  SupabaseTable get table => VwMweFormulariosTable();

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get nomvisita => getField<String>('nomvisita');
  set nomvisita(String? value) => setField<String>('nomvisita', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lng => getField<double>('lng');
  set lng(double? value) => setField<double>('lng', value);

  String? get codformulario => getField<String>('codformulario');
  set codformulario(String? value) => setField<String>('codformulario', value);

  String? get nomformulario => getField<String>('nomformulario');
  set nomformulario(String? value) => setField<String>('nomformulario', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
