import '../database.dart';

class CajaRcaTable extends SupabaseTable<CajaRcaRow> {
  @override
  String get tableName => 'caja_rca';

  @override
  CajaRcaRow createRow(Map<String, dynamic> data) => CajaRcaRow(data);
}

class CajaRcaRow extends SupabaseDataRow {
  CajaRcaRow(super.data);

  @override
  SupabaseTable get table => CajaRcaTable();

  int get cajaRcaid => getField<int>('caja_rcaid')!;
  set cajaRcaid(int value) => setField<int>('caja_rcaid', value);

  int? get cajaCajid => getField<int>('caja_cajid');
  set cajaCajid(int? value) => setField<int>('caja_cajid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  String? get numrecibo => getField<String>('numrecibo');
  set numrecibo(String? value) => setField<String>('numrecibo', value);

  DateTime get fecharecibo => getField<DateTime>('fecharecibo')!;
  set fecharecibo(DateTime value) => setField<DateTime>('fecharecibo', value);

  int? get cajaCcaid => getField<int>('caja_ccaid');
  set cajaCcaid(int? value) => setField<int>('caja_ccaid', value);

  double? get vlrrecibo => getField<double>('vlrrecibo');
  set vlrrecibo(double? value) => setField<double>('vlrrecibo', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime? get fechaalta => getField<DateTime>('fechaalta');
  set fechaalta(DateTime? value) => setField<DateTime>('fechaalta', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  int? get formadepagoid => getField<int>('formadepagoid');
  set formadepagoid(int? value) => setField<int>('formadepagoid', value);
}
