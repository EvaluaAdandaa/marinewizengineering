import '../database.dart';

class VContactosterceroTable extends SupabaseTable<VContactosterceroRow> {
  @override
  String get tableName => 'v_contactostercero';

  @override
  VContactosterceroRow createRow(Map<String, dynamic> data) =>
      VContactosterceroRow(data);
}

class VContactosterceroRow extends SupabaseDataRow {
  VContactosterceroRow(super.data);

  @override
  SupabaseTable get table => VContactosterceroTable();

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get idtributaria => getField<String>('idtributaria');
  set idtributaria(String? value) => setField<String>('idtributaria', value);

  String? get nomcontacto => getField<String>('nomcontacto');
  set nomcontacto(String? value) => setField<String>('nomcontacto', value);

  String? get celcontacto => getField<String>('celcontacto');
  set celcontacto(String? value) => setField<String>('celcontacto', value);

  String? get emailcontacto => getField<String>('emailcontacto');
  set emailcontacto(String? value) => setField<String>('emailcontacto', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get tercid => getField<int>('tercid');
  set tercid(int? value) => setField<int>('tercid', value);
}
