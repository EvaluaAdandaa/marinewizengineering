import '../database.dart';

class PtEadTable extends SupabaseTable<PtEadRow> {
  @override
  String get tableName => 'pt_ead';

  @override
  PtEadRow createRow(Map<String, dynamic> data) => PtEadRow(data);
}

class PtEadRow extends SupabaseDataRow {
  PtEadRow(super.data);

  @override
  SupabaseTable get table => PtEadTable();

  int get ptEadid => getField<int>('pt_eadid')!;
  set ptEadid(int value) => setField<int>('pt_eadid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get estructurapadre => getField<int>('estructurapadre');
  set estructurapadre(int? value) => setField<int>('estructurapadre', value);

  String? get codestructuraad => getField<String>('codestructuraad');
  set codestructuraad(String? value) =>
      setField<String>('codestructuraad', value);

  String? get nomestructuraad => getField<String>('nomestructuraad');
  set nomestructuraad(String? value) =>
      setField<String>('nomestructuraad', value);
}
