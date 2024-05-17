import '../database.dart';

class GgTarTable extends SupabaseTable<GgTarRow> {
  @override
  String get tableName => 'gg_tar';

  @override
  GgTarRow createRow(Map<String, dynamic> data) => GgTarRow(data);
}

class GgTarRow extends SupabaseDataRow {
  GgTarRow(super.data);

  @override
  SupabaseTable get table => GgTarTable();

  int get ggTarid => getField<int>('gg_tarid')!;
  set ggTarid(int value) => setField<int>('gg_tarid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get contexto => getField<String>('contexto');
  set contexto(String? value) => setField<String>('contexto', value);

  int? get contextoid => getField<int>('contextoid');
  set contextoid(int? value) => setField<int>('contextoid', value);

  int? get asignadoa => getField<int>('asignadoa');
  set asignadoa(int? value) => setField<int>('asignadoa', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  DateTime? get fechalimite => getField<DateTime>('fechalimite');
  set fechalimite(DateTime? value) => setField<DateTime>('fechalimite', value);

  int? get tareacumplida => getField<int>('tareacumplida');
  set tareacumplida(int? value) => setField<int>('tareacumplida', value);

  DateTime? get fechacumplida => getField<DateTime>('fechacumplida');
  set fechacumplida(DateTime? value) =>
      setField<DateTime>('fechacumplida', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);
}
