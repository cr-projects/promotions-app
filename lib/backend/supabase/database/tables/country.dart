import '../database.dart';

class CountryTable extends SupabaseTable<CountryRow> {
  @override
  String get tableName => 'country';

  @override
  CountryRow createRow(Map<String, dynamic> data) => CountryRow(data);
}

class CountryRow extends SupabaseDataRow {
  CountryRow(super.data);

  @override
  SupabaseTable get table => CountryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
