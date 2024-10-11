import '../database.dart';

class CardTable extends SupabaseTable<CardRow> {
  @override
  String get tableName => 'card';

  @override
  CardRow createRow(Map<String, dynamic> data) => CardRow(data);
}

class CardRow extends SupabaseDataRow {
  CardRow(super.data);

  @override
  SupabaseTable get table => CardTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
