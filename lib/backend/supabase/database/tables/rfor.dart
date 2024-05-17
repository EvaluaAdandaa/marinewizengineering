import '../database.dart';

class RforTable extends SupabaseTable<RforRow> {
  @override
  String get tableName => 'rfor';

  @override
  RforRow createRow(Map<String, dynamic> data) => RforRow(data);
}

class RforRow extends SupabaseDataRow {
  RforRow(super.data);

  @override
  SupabaseTable get table => RforTable();

  int get rforid => getField<int>('rforid')!;
  set rforid(int value) => setField<int>('rforid', value);

  int get plforid => getField<int>('plforid')!;
  set plforid(int value) => setField<int>('plforid', value);

  int get oseid => getField<int>('oseid')!;
  set oseid(int value) => setField<int>('oseid', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  String get nomformulario => getField<String>('nomformulario')!;
  set nomformulario(String value) => setField<String>('nomformulario', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lng => getField<double>('lng');
  set lng(double? value) => setField<double>('lng', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  dynamic get jsoinfo => getField<dynamic>('jsoinfo');
  set jsoinfo(dynamic value) => setField<dynamic>('jsoinfo', value);

  int? get usuarioid => getField<int>('usuarioid');
  set usuarioid(int? value) => setField<int>('usuarioid', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get fechacreacion => getField<DateTime>('fechacreacion');
  set fechacreacion(DateTime? value) =>
      setField<DateTime>('fechacreacion', value);

  String? get personacontacto => getField<String>('personacontacto');
  set personacontacto(String? value) =>
      setField<String>('personacontacto', value);
}
