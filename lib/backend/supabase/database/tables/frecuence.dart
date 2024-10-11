import '../database.dart';

class FrecuenceTable extends SupabaseTable<FrecuenceRow> {
  @override
  String get tableName => 'frecuence';

  @override
  FrecuenceRow createRow(Map<String, dynamic> data) => FrecuenceRow(data);
}

class FrecuenceRow extends SupabaseDataRow {
  FrecuenceRow(super.data);

  @override
  SupabaseTable get table => FrecuenceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
