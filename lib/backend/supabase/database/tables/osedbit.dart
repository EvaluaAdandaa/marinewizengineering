import '../database.dart';

class OsedbitTable extends SupabaseTable<OsedbitRow> {
  @override
  String get tableName => 'osedbit';

  @override
  OsedbitRow createRow(Map<String, dynamic> data) => OsedbitRow(data);
}

class OsedbitRow extends SupabaseDataRow {
  OsedbitRow(super.data);

  @override
  SupabaseTable get table => OsedbitTable();

  int get osedbitid => getField<int>('osedbitid')!;
  set osedbitid(int value) => setField<int>('osedbitid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  int? get usrid => getField<int>('usrid');
  set usrid(int? value) => setField<int>('usrid', value);

  int? get estado => getField<int>('estado');
  set estado(int? value) => setField<int>('estado', value);

  int? get motivo => getField<int>('motivo');
  set motivo(int? value) => setField<int>('motivo', value);
}
