import '../database.dart';

class RsdSupplierTable extends SupabaseTable<RsdSupplierRow> {
  @override
  String get tableName => 'rsd_supplier';

  @override
  RsdSupplierRow createRow(Map<String, dynamic> data) => RsdSupplierRow(data);
}

class RsdSupplierRow extends SupabaseDataRow {
  RsdSupplierRow(super.data);

  @override
  SupabaseTable get table => RsdSupplierTable();

  int get supplierid => getField<int>('supplierid')!;
  set supplierid(int value) => setField<int>('supplierid', value);

  String get companyname => getField<String>('companyname')!;
  set companyname(String value) => setField<String>('companyname', value);

  int get suptypeid => getField<int>('suptypeid')!;
  set suptypeid(int value) => setField<int>('suptypeid', value);

  String? get logolink => getField<String>('logolink');
  set logolink(String? value) => setField<String>('logolink', value);
}
