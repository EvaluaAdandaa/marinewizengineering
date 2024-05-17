import '../database.dart';

class RforcaoTable extends SupabaseTable<RforcaoRow> {
  @override
  String get tableName => 'rforcao';

  @override
  RforcaoRow createRow(Map<String, dynamic> data) => RforcaoRow(data);
}

class RforcaoRow extends SupabaseDataRow {
  RforcaoRow(super.data);

  @override
  SupabaseTable get table => RforcaoTable();

  int get rforcaoid => getField<int>('rforcaoid')!;
  set rforcaoid(int value) => setField<int>('rforcaoid', value);

  int get rforcaid => getField<int>('rforcaid')!;
  set rforcaid(int value) => setField<int>('rforcaid', value);

  int get plforcaoid => getField<int>('plforcaoid')!;
  set plforcaoid(int value) => setField<int>('plforcaoid', value);

  String get valtexto => getField<String>('valtexto')!;
  set valtexto(String value) => setField<String>('valtexto', value);

  int? get valcheckbox => getField<int>('valcheckbox');
  set valcheckbox(int? value) => setField<int>('valcheckbox', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get urlficheros => getField<String>('urlficheros');
  set urlficheros(String? value) => setField<String>('urlficheros', value);
}
