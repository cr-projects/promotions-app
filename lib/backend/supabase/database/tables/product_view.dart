import '../database.dart';

class ProductViewTable extends SupabaseTable<ProductViewRow> {
  @override
  String get tableName => 'product_view';

  @override
  ProductViewRow createRow(Map<String, dynamic> data) => ProductViewRow(data);
}

class ProductViewRow extends SupabaseDataRow {
  ProductViewRow(super.data);

  @override
  SupabaseTable get table => ProductViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  int? get productTypeId => getField<int>('product_type_id');
  set productTypeId(int? value) => setField<int>('product_type_id', value);

  int? get brandId => getField<int>('brand_id');
  set brandId(int? value) => setField<int>('brand_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get brandName => getField<String>('brand_name');
  set brandName(String? value) => setField<String>('brand_name', value);

  String? get productTypeName => getField<String>('product_type_name');
  set productTypeName(String? value) =>
      setField<String>('product_type_name', value);
}
