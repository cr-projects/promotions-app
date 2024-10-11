import '../database.dart';

class DayTable extends SupabaseTable<DayRow> {
  @override
  String get tableName => 'day';

  @override
  DayRow createRow(Map<String, dynamic> data) => DayRow(data);
}

class DayRow extends SupabaseDataRow {
  DayRow(super.data);

  @override
  SupabaseTable get table => DayTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
