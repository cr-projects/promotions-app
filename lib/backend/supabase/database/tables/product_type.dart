import '../database.dart';

class ProductTypeTable extends SupabaseTable<ProductTypeRow> {
  @override
  String get tableName => 'product_type';

  @override
  ProductTypeRow createRow(Map<String, dynamic> data) => ProductTypeRow(data);
}

class ProductTypeRow extends SupabaseDataRow {
  ProductTypeRow(super.data);

  @override
  SupabaseTable get table => ProductTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
