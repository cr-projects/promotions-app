import '../database.dart';

class FinantialEntityTypeTable extends SupabaseTable<FinantialEntityTypeRow> {
  @override
  String get tableName => 'finantial_entity_type';

  @override
  FinantialEntityTypeRow createRow(Map<String, dynamic> data) =>
      FinantialEntityTypeRow(data);
}

class FinantialEntityTypeRow extends SupabaseDataRow {
  FinantialEntityTypeRow(super.data);

  @override
  SupabaseTable get table => FinantialEntityTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
