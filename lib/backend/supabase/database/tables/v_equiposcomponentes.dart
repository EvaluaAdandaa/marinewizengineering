import '../database.dart';

class VEquiposcomponentesTable extends SupabaseTable<VEquiposcomponentesRow> {
  @override
  String get tableName => 'v_equiposcomponentes';

  @override
  VEquiposcomponentesRow createRow(Map<String, dynamic> data) =>
      VEquiposcomponentesRow(data);
}

class VEquiposcomponentesRow extends SupabaseDataRow {
  VEquiposcomponentesRow(super.data);

  @override
  SupabaseTable get table => VEquiposcomponentesTable();

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get nomequipo => getField<String>('nomequipo');
  set nomequipo(String? value) => setField<String>('nomequipo', value);

  String? get tipoequipo => getField<String>('tipoequipo');
  set tipoequipo(String? value) => setField<String>('tipoequipo', value);

  String? get nommarca => getField<String>('nommarca');
  set nommarca(String? value) => setField<String>('nommarca', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get numserial => getField<String>('numserial');
  set numserial(String? value) => setField<String>('numserial', value);

  double? get horometro => getField<double>('horometro');
  set horometro(double? value) => setField<double>('horometro', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get botequid => getField<int>('botequid');
  set botequid(int? value) => setField<int>('botequid', value);
}
