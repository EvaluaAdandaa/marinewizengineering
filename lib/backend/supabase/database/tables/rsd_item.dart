import '../database.dart';

class RsdItemTable extends SupabaseTable<RsdItemRow> {
  @override
  String get tableName => 'rsd_item';

  @override
  RsdItemRow createRow(Map<String, dynamic> data) => RsdItemRow(data);
}

class RsdItemRow extends SupabaseDataRow {
  RsdItemRow(super.data);

  @override
  SupabaseTable get table => RsdItemTable();

  int get itemid => getField<int>('itemid')!;
  set itemid(int value) => setField<int>('itemid', value);

  int get warehouseid => getField<int>('warehouseid')!;
  set warehouseid(int value) => setField<int>('warehouseid', value);

  String get itemname => getField<String>('itemname')!;
  set itemname(String value) => setField<String>('itemname', value);

  String? get itemdesc => getField<String>('itemdesc');
  set itemdesc(String? value) => setField<String>('itemdesc', value);

  double get itemnet => getField<double>('itemnet')!;
  set itemnet(double value) => setField<double>('itemnet', value);

  double get itemweight => getField<double>('itemweight')!;
  set itemweight(double value) => setField<double>('itemweight', value);

  String get imageurl => getField<String>('imageurl')!;
  set imageurl(String value) => setField<String>('imageurl', value);
}
