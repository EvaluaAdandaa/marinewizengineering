import '../database.dart';

class VBotesTable extends SupabaseTable<VBotesRow> {
  @override
  String get tableName => 'v_botes';

  @override
  VBotesRow createRow(Map<String, dynamic> data) => VBotesRow(data);
}

class VBotesRow extends SupabaseDataRow {
  VBotesRow(super.data);

  @override
  SupabaseTable get table => VBotesTable();

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get matricula => getField<String>('matricula');
  set matricula(String? value) => setField<String>('matricula', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);
}
