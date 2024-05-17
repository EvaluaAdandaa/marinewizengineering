import '../database.dart';

class BotequTable extends SupabaseTable<BotequRow> {
  @override
  String get tableName => 'botequ';

  @override
  BotequRow createRow(Map<String, dynamic> data) => BotequRow(data);
}

class BotequRow extends SupabaseDataRow {
  BotequRow(super.data);

  @override
  SupabaseTable get table => BotequTable();

  int get botequid => getField<int>('botequid')!;
  set botequid(int value) => setField<int>('botequid', value);

  int? get botid => getField<int>('botid');
  set botid(int? value) => setField<int>('botid', value);

  String? get nomequipo => getField<String>('nomequipo');
  set nomequipo(String? value) => setField<String>('nomequipo', value);

  int? get tipoequipo => getField<int>('tipoequipo');
  set tipoequipo(int? value) => setField<int>('tipoequipo', value);

  int? get mrcid => getField<int>('mrcid');
  set mrcid(int? value) => setField<int>('mrcid', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get numserial => getField<String>('numserial');
  set numserial(String? value) => setField<String>('numserial', value);

  double? get horometro => getField<double>('horometro');
  set horometro(double? value) => setField<double>('horometro', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
