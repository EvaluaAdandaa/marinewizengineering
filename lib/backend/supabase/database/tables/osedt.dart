import '../database.dart';

class OsedtTable extends SupabaseTable<OsedtRow> {
  @override
  String get tableName => 'osedt';

  @override
  OsedtRow createRow(Map<String, dynamic> data) => OsedtRow(data);
}

class OsedtRow extends SupabaseDataRow {
  OsedtRow(super.data);

  @override
  SupabaseTable get table => OsedtTable();

  int get osedtid => getField<int>('osedtid')!;
  set osedtid(int value) => setField<int>('osedtid', value);

  int? get osedid => getField<int>('osedid');
  set osedid(int? value) => setField<int>('osedid', value);

  DateTime get fechatransito => getField<DateTime>('fechatransito')!;
  set fechatransito(DateTime value) =>
      setField<DateTime>('fechatransito', value);

  int? get tareaid => getField<int>('tareaid');
  set tareaid(int? value) => setField<int>('tareaid', value);

  int? get usrasignadoid => getField<int>('usrasignadoid');
  set usrasignadoid(int? value) => setField<int>('usrasignadoid', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  DateTime get fechaalta => getField<DateTime>('fechaalta')!;
  set fechaalta(DateTime value) => setField<DateTime>('fechaalta', value);

  int? get usridalta => getField<int>('usridalta');
  set usridalta(int? value) => setField<int>('usridalta', value);
}
