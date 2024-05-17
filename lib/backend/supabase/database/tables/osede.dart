import '../database.dart';

class OsedeTable extends SupabaseTable<OsedeRow> {
  @override
  String get tableName => 'osede';

  @override
  OsedeRow createRow(Map<String, dynamic> data) => OsedeRow(data);
}

class OsedeRow extends SupabaseDataRow {
  OsedeRow(super.data);

  @override
  SupabaseTable get table => OsedeTable();

  int get osedeid => getField<int>('osedeid')!;
  set osedeid(int value) => setField<int>('osedeid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);
}
