import '../database.dart';

class VClientesxclasificadorTable
    extends SupabaseTable<VClientesxclasificadorRow> {
  @override
  String get tableName => 'v_clientesxclasificador';

  @override
  VClientesxclasificadorRow createRow(Map<String, dynamic> data) =>
      VClientesxclasificadorRow(data);
}

class VClientesxclasificadorRow extends SupabaseDataRow {
  VClientesxclasificadorRow(super.data);

  @override
  SupabaseTable get table => VClientesxclasificadorTable();

  int? get ptClaid => getField<int>('pt_claid');
  set ptClaid(int? value) => setField<int>('pt_claid', value);

  String? get nomclasificador => getField<String>('nomclasificador');
  set nomclasificador(String? value) =>
      setField<String>('nomclasificador', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
