import '../database.dart';

class VCtzxclasificadorproductoTable
    extends SupabaseTable<VCtzxclasificadorproductoRow> {
  @override
  String get tableName => 'v_ctzxclasificadorproducto';

  @override
  VCtzxclasificadorproductoRow createRow(Map<String, dynamic> data) =>
      VCtzxclasificadorproductoRow(data);
}

class VCtzxclasificadorproductoRow extends SupabaseDataRow {
  VCtzxclasificadorproductoRow(super.data);

  @override
  SupabaseTable get table => VCtzxclasificadorproductoTable();

  String? get nomclasificador => getField<String>('nomclasificador');
  set nomclasificador(String? value) =>
      setField<String>('nomclasificador', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
