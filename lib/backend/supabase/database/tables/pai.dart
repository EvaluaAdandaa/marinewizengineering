import '../database.dart';

class PaiTable extends SupabaseTable<PaiRow> {
  @override
  String get tableName => 'pai';

  @override
  PaiRow createRow(Map<String, dynamic> data) => PaiRow(data);
}

class PaiRow extends SupabaseDataRow {
  PaiRow(super.data);

  @override
  SupabaseTable get table => PaiTable();

  int get paiid => getField<int>('paiid')!;
  set paiid(int value) => setField<int>('paiid', value);

  String? get nompais => getField<String>('nompais');
  set nompais(String? value) => setField<String>('nompais', value);

  int? get codpais => getField<int>('codpais');
  set codpais(int? value) => setField<int>('codpais', value);

  String? get codpaisalfa => getField<String>('codpaisalfa');
  set codpaisalfa(String? value) => setField<String>('codpaisalfa', value);
}
