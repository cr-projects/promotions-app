import '../database.dart';

class FinantialEntityTable extends SupabaseTable<FinantialEntityRow> {
  @override
  String get tableName => 'finantial_entity';

  @override
  FinantialEntityRow createRow(Map<String, dynamic> data) =>
      FinantialEntityRow(data);
}

class FinantialEntityRow extends SupabaseDataRow {
  FinantialEntityRow(super.data);

  @override
  SupabaseTable get table => FinantialEntityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int? get finantialEntityTypeId => getField<int>('finantial_entity_type_id');
  set finantialEntityTypeId(int? value) =>
      setField<int>('finantial_entity_type_id', value);
}
