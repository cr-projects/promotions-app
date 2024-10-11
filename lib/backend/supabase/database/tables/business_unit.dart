import '../database.dart';

class BusinessUnitTable extends SupabaseTable<BusinessUnitRow> {
  @override
  String get tableName => 'business_unit';

  @override
  BusinessUnitRow createRow(Map<String, dynamic> data) => BusinessUnitRow(data);
}

class BusinessUnitRow extends SupabaseDataRow {
  BusinessUnitRow(super.data);

  @override
  SupabaseTable get table => BusinessUnitTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
