import '../database.dart';

class BotequpstTable extends SupabaseTable<BotequpstRow> {
  @override
  String get tableName => 'botequpst';

  @override
  BotequpstRow createRow(Map<String, dynamic> data) => BotequpstRow(data);
}

class BotequpstRow extends SupabaseDataRow {
  BotequpstRow(super.data);

  @override
  SupabaseTable get table => BotequpstTable();

  int get botequpstid => getField<int>('botequpstid')!;
  set botequpstid(int value) => setField<int>('botequpstid', value);

  int? get botequid => getField<int>('botequid');
  set botequid(int? value) => setField<int>('botequid', value);

  int? get serid => getField<int>('serid');
  set serid(int? value) => setField<int>('serid', value);

  DateTime? get fechaproximost => getField<DateTime>('fechaproximost');
  set fechaproximost(DateTime? value) =>
      setField<DateTime>('fechaproximost', value);

  DateTime? get fechareal => getField<DateTime>('fechareal');
  set fechareal(DateTime? value) => setField<DateTime>('fechareal', value);

  double? get horometro => getField<double>('horometro');
  set horometro(double? value) => setField<double>('horometro', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);
}
