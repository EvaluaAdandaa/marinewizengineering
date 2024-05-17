import '../database.dart';

class SerTable extends SupabaseTable<SerRow> {
  @override
  String get tableName => 'ser';

  @override
  SerRow createRow(Map<String, dynamic> data) => SerRow(data);
}

class SerRow extends SupabaseDataRow {
  SerRow(super.data);

  @override
  SupabaseTable get table => SerTable();

  int get serid => getField<int>('serid')!;
  set serid(int value) => setField<int>('serid', value);

  int get claseservicio => getField<int>('claseservicio')!;
  set claseservicio(int value) => setField<int>('claseservicio', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  String? get codservicio => getField<String>('codservicio');
  set codservicio(String? value) => setField<String>('codservicio', value);

  String? get nomservicio => getField<String>('nomservicio');
  set nomservicio(String? value) => setField<String>('nomservicio', value);

  int? get ptClaid => getField<int>('pt_claid');
  set ptClaid(int? value) => setField<int>('pt_claid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get manejatabla => getField<int>('manejatabla');
  set manejatabla(int? value) => setField<int>('manejatabla', value);

  int? get manejastock => getField<int>('manejastock');
  set manejastock(int? value) => setField<int>('manejastock', value);

  int? get liqid => getField<int>('liqid');
  set liqid(int? value) => setField<int>('liqid', value);

  int? get generajobticket => getField<int>('generajobticket');
  set generajobticket(int? value) => setField<int>('generajobticket', value);

  String? get terminosgarantia => getField<String>('terminosgarantia');
  set terminosgarantia(String? value) =>
      setField<String>('terminosgarantia', value);

  String? get obstecnicas => getField<String>('obstecnicas');
  set obstecnicas(String? value) => setField<String>('obstecnicas', value);

  int? get mrcid => getField<int>('mrcid');
  set mrcid(int? value) => setField<int>('mrcid', value);

  double? get piva => getField<double>('piva');
  set piva(double? value) => setField<double>('piva', value);

  int? get ptEadid => getField<int>('pt_eadid');
  set ptEadid(int? value) => setField<int>('pt_eadid', value);

  String? get descencabezado => getField<String>('descencabezado');
  set descencabezado(String? value) =>
      setField<String>('descencabezado', value);

  String? get descpie => getField<String>('descpie');
  set descpie(String? value) => setField<String>('descpie', value);
}
