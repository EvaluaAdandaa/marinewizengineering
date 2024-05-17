import '../database.dart';

class BotTable extends SupabaseTable<BotRow> {
  @override
  String get tableName => 'bot';

  @override
  BotRow createRow(Map<String, dynamic> data) => BotRow(data);
}

class BotRow extends SupabaseDataRow {
  BotRow(super.data);

  @override
  SupabaseTable get table => BotTable();

  int get botid => getField<int>('botid')!;
  set botid(int value) => setField<int>('botid', value);

  int? get saasCiaid => getField<int>('saas_ciaid');
  set saasCiaid(int? value) => setField<int>('saas_ciaid', value);

  int? get terid => getField<int>('terid');
  set terid(int? value) => setField<int>('terid', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get matricula => getField<String>('matricula');
  set matricula(String? value) => setField<String>('matricula', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  double? get eslora => getField<double>('eslora');
  set eslora(double? value) => setField<double>('eslora', value);

  double? get manga => getField<double>('manga');
  set manga(double? value) => setField<double>('manga', value);

  double? get puntal => getField<double>('puntal');
  set puntal(double? value) => setField<double>('puntal', value);

  double? get caladomaximo => getField<double>('caladomaximo');
  set caladomaximo(double? value) => setField<double>('caladomaximo', value);

  double? get francobordo => getField<double>('francobordo');
  set francobordo(double? value) => setField<double>('francobordo', value);

  double? get desplazamientomax => getField<double>('desplazamientomax');
  set desplazamientomax(double? value) =>
      setField<double>('desplazamientomax', value);

  double? get desplazamientorosca => getField<double>('desplazamientorosca');
  set desplazamientorosca(double? value) =>
      setField<double>('desplazamientorosca', value);

  double? get pesomuerto => getField<double>('pesomuerto');
  set pesomuerto(double? value) => setField<double>('pesomuerto', value);

  double? get arqueobruto => getField<double>('arqueobruto');
  set arqueobruto(double? value) => setField<double>('arqueobruto', value);

  double? get arqueoneto => getField<double>('arqueoneto');
  set arqueoneto(double? value) => setField<double>('arqueoneto', value);

  int? get tipopropulsion => getField<int>('tipopropulsion');
  set tipopropulsion(int? value) => setField<int>('tipopropulsion', value);

  String? get maxpropulsion => getField<String>('maxpropulsion');
  set maxpropulsion(String? value) => setField<String>('maxpropulsion', value);

  int? get materialcasco => getField<int>('materialcasco');
  set materialcasco(int? value) => setField<int>('materialcasco', value);

  int? get tipocasco => getField<int>('tipocasco');
  set tipocasco(int? value) => setField<int>('tipocasco', value);

  double? get horometro => getField<double>('horometro');
  set horometro(double? value) => setField<double>('horometro', value);

  int? get tipoequipo => getField<int>('tipoequipo');
  set tipoequipo(int? value) => setField<int>('tipoequipo', value);

  int? get mrcid => getField<int>('mrcid');
  set mrcid(int? value) => setField<int>('mrcid', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get numserial => getField<String>('numserial');
  set numserial(String? value) => setField<String>('numserial', value);
}
