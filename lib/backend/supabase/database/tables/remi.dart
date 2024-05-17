import '../database.dart';

class RemiTable extends SupabaseTable<RemiRow> {
  @override
  String get tableName => 'remi';

  @override
  RemiRow createRow(Map<String, dynamic> data) => RemiRow(data);
}

class RemiRow extends SupabaseDataRow {
  RemiRow(super.data);

  @override
  SupabaseTable get table => RemiTable();

  int get remiid => getField<int>('remiid')!;
  set remiid(int value) => setField<int>('remiid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numremision => getField<String>('numremision');
  set numremision(String? value) => setField<String>('numremision', value);

  DateTime get fecharemision => getField<DateTime>('fecharemision')!;
  set fecharemision(DateTime value) =>
      setField<DateTime>('fecharemision', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  DateTime? get recibidofecha => getField<DateTime>('recibidofecha');
  set recibidofecha(DateTime? value) =>
      setField<DateTime>('recibidofecha', value);

  String? get recibidoquien => getField<String>('recibidoquien');
  set recibidoquien(String? value) => setField<String>('recibidoquien', value);
}
