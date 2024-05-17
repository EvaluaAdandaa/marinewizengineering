import '../database.dart';

class UsrjrqTable extends SupabaseTable<UsrjrqRow> {
  @override
  String get tableName => 'usrjrq';

  @override
  UsrjrqRow createRow(Map<String, dynamic> data) => UsrjrqRow(data);
}

class UsrjrqRow extends SupabaseDataRow {
  UsrjrqRow(super.data);

  @override
  SupabaseTable get table => UsrjrqTable();

  int get usrjrqid => getField<int>('usrjrqid')!;
  set usrjrqid(int value) => setField<int>('usrjrqid', value);

  int get usrid => getField<int>('usrid')!;
  set usrid(int value) => setField<int>('usrid', value);

  int get usridhijo => getField<int>('usridhijo')!;
  set usridhijo(int value) => setField<int>('usridhijo', value);

  int? get supervisor => getField<int>('supervisor');
  set supervisor(int? value) => setField<int>('supervisor', value);

  int? get editar => getField<int>('editar');
  set editar(int? value) => setField<int>('editar', value);

  int? get saasCiaidDefault => getField<int>('saas_ciaid_default');
  set saasCiaidDefault(int? value) =>
      setField<int>('saas_ciaid_default', value);

  int? get saasCiasidDefault => getField<int>('saas_ciasid_default');
  set saasCiasidDefault(int? value) =>
      setField<int>('saas_ciasid_default', value);
}
