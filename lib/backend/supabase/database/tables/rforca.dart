import '../database.dart';

class RforcaTable extends SupabaseTable<RforcaRow> {
  @override
  String get tableName => 'rforca';

  @override
  RforcaRow createRow(Map<String, dynamic> data) => RforcaRow(data);
}

class RforcaRow extends SupabaseDataRow {
  RforcaRow(super.data);

  @override
  SupabaseTable get table => RforcaTable();

  int get rforcaid => getField<int>('rforcaid')!;
  set rforcaid(int value) => setField<int>('rforcaid', value);

  int get rforid => getField<int>('rforid')!;
  set rforid(int value) => setField<int>('rforid', value);

  int get plforcaid => getField<int>('plforcaid')!;
  set plforcaid(int value) => setField<int>('plforcaid', value);

  String? get valtexto => getField<String>('valtexto');
  set valtexto(String? value) => setField<String>('valtexto', value);

  DateTime? get valfecha => getField<DateTime>('valfecha');
  set valfecha(DateTime? value) => setField<DateTime>('valfecha', value);

  double? get valnumero => getField<double>('valnumero');
  set valnumero(double? value) => setField<double>('valnumero', value);

  int? get valsinocheck => getField<int>('valsinocheck');
  set valsinocheck(int? value) => setField<int>('valsinocheck', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  dynamic get jsinfo => getField<dynamic>('jsinfo');
  set jsinfo(dynamic value) => setField<dynamic>('jsinfo', value);

  double? get valnumero2 => getField<double>('valnumero2');
  set valnumero2(double? value) => setField<double>('valnumero2', value);
}
