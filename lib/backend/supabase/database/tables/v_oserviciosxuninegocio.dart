import '../database.dart';

class VOserviciosxuninegocioTable
    extends SupabaseTable<VOserviciosxuninegocioRow> {
  @override
  String get tableName => 'v_oserviciosxuninegocio';

  @override
  VOserviciosxuninegocioRow createRow(Map<String, dynamic> data) =>
      VOserviciosxuninegocioRow(data);
}

class VOserviciosxuninegocioRow extends SupabaseDataRow {
  VOserviciosxuninegocioRow(super.data);

  @override
  SupabaseTable get table => VOserviciosxuninegocioTable();

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  double? get vlrtotal => getField<double>('vlrtotal');
  set vlrtotal(double? value) => setField<double>('vlrtotal', value);
}
