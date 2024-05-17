import '../database.dart';

class VPropiedadesTable extends SupabaseTable<VPropiedadesRow> {
  @override
  String get tableName => 'v_propiedades';

  @override
  VPropiedadesRow createRow(Map<String, dynamic> data) => VPropiedadesRow(data);
}

class VPropiedadesRow extends SupabaseDataRow {
  VPropiedadesRow(super.data);

  @override
  SupabaseTable get table => VPropiedadesTable();

  String? get codentidad => getField<String>('codentidad');
  set codentidad(String? value) => setField<String>('codentidad', value);

  String? get nomentidad => getField<String>('nomentidad');
  set nomentidad(String? value) => setField<String>('nomentidad', value);

  String? get codpropiedad => getField<String>('codpropiedad');
  set codpropiedad(String? value) => setField<String>('codpropiedad', value);

  String? get nompropiedad => getField<String>('nompropiedad');
  set nompropiedad(String? value) => setField<String>('nompropiedad', value);

  String? get codvalor => getField<String>('codvalor');
  set codvalor(String? value) => setField<String>('codvalor', value);

  String? get nompvalor => getField<String>('nompvalor');
  set nompvalor(String? value) => setField<String>('nompvalor', value);

  String? get textopvalor => getField<String>('textopvalor');
  set textopvalor(String? value) => setField<String>('textopvalor', value);

  String? get textopvrtf => getField<String>('textopvrtf');
  set textopvrtf(String? value) => setField<String>('textopvrtf', value);

  int? get ptEntpvid => getField<int>('pt_entpvid');
  set ptEntpvid(int? value) => setField<int>('pt_entpvid', value);
}
