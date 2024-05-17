import '../database.dart';

class CajaApcTable extends SupabaseTable<CajaApcRow> {
  @override
  String get tableName => 'caja_apc';

  @override
  CajaApcRow createRow(Map<String, dynamic> data) => CajaApcRow(data);
}

class CajaApcRow extends SupabaseDataRow {
  CajaApcRow(super.data);

  @override
  SupabaseTable get table => CajaApcTable();

  int get cajaApcid => getField<int>('caja_apcid')!;
  set cajaApcid(int value) => setField<int>('caja_apcid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get cajaCajid => getField<int>('caja_cajid');
  set cajaCajid(int? value) => setField<int>('caja_cajid', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);

  DateTime get fechaapertura => getField<DateTime>('fechaapertura')!;
  set fechaapertura(DateTime value) =>
      setField<DateTime>('fechaapertura', value);

  DateTime? get fechacierre => getField<DateTime>('fechacierre');
  set fechacierre(DateTime? value) => setField<DateTime>('fechacierre', value);

  double? get vlrinicial => getField<double>('vlrinicial');
  set vlrinicial(double? value) => setField<double>('vlrinicial', value);

  double? get vlrfinal => getField<double>('vlrfinal');
  set vlrfinal(double? value) => setField<double>('vlrfinal', value);

  int? get abierta => getField<int>('abierta');
  set abierta(int? value) => setField<int>('abierta', value);
}
