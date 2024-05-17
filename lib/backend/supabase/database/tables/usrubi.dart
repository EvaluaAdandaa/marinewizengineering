import '../database.dart';

class UsrubiTable extends SupabaseTable<UsrubiRow> {
  @override
  String get tableName => 'usrubi';

  @override
  UsrubiRow createRow(Map<String, dynamic> data) => UsrubiRow(data);
}

class UsrubiRow extends SupabaseDataRow {
  UsrubiRow(super.data);

  @override
  SupabaseTable get table => UsrubiTable();

  int get usrubiid => getField<int>('usrubiid')!;
  set usrubiid(int value) => setField<int>('usrubiid', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get saasCiasid => getField<int>('saas_ciasid');
  set saasCiasid(int? value) => setField<int>('saas_ciasid', value);

  int? get cajaCajid => getField<int>('caja_cajid');
  set cajaCajid(int? value) => setField<int>('caja_cajid', value);
}
