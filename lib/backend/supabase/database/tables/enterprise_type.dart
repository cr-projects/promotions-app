import '../database.dart';

class EnterpriseTypeTable extends SupabaseTable<EnterpriseTypeRow> {
  @override
  String get tableName => 'enterprise_type';

  @override
  EnterpriseTypeRow createRow(Map<String, dynamic> data) =>
      EnterpriseTypeRow(data);
}

class EnterpriseTypeRow extends SupabaseDataRow {
  EnterpriseTypeRow(super.data);

  @override
  SupabaseTable get table => EnterpriseTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
