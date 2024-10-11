import '../database.dart';

class PromotionViewTable extends SupabaseTable<PromotionViewRow> {
  @override
  String get tableName => 'promotion_view';

  @override
  PromotionViewRow createRow(Map<String, dynamic> data) =>
      PromotionViewRow(data);
}

class PromotionViewRow extends SupabaseDataRow {
  PromotionViewRow(super.data);

  @override
  SupabaseTable get table => PromotionViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get brandId => getField<int>('brand_id');
  set brandId(int? value) => setField<int>('brand_id', value);

  String? get brandName => getField<String>('brand_name');
  set brandName(String? value) => setField<String>('brand_name', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  int? get countryId => getField<int>('country_id');
  set countryId(int? value) => setField<int>('country_id', value);

  String? get countryName => getField<String>('country_name');
  set countryName(String? value) => setField<String>('country_name', value);

  int? get provinceId => getField<int>('province_id');
  set provinceId(int? value) => setField<int>('province_id', value);

  String? get provinceName => getField<String>('province_name');
  set provinceName(String? value) => setField<String>('province_name', value);

  int? get districtId => getField<int>('district_id');
  set districtId(int? value) => setField<int>('district_id', value);

  String? get distrinctName => getField<String>('distrinct_name');
  set distrinctName(String? value) => setField<String>('distrinct_name', value);

  int? get aditionalId => getField<int>('aditional_id');
  set aditionalId(int? value) => setField<int>('aditional_id', value);

  String? get aditionalName => getField<String>('aditional_name');
  set aditionalName(String? value) => setField<String>('aditional_name', value);

  int? get businessUnitId => getField<int>('business_unit_id');
  set businessUnitId(int? value) => setField<int>('business_unit_id', value);

  String? get businessUnitName => getField<String>('business_unit_name');
  set businessUnitName(String? value) =>
      setField<String>('business_unit_name', value);

  int? get discountTypeId => getField<int>('discount_type_id');
  set discountTypeId(int? value) => setField<int>('discount_type_id', value);

  String? get discountTypesName => getField<String>('discount_types_name');
  set discountTypesName(String? value) =>
      setField<String>('discount_types_name', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String? get conditions => getField<String>('conditions');
  set conditions(String? value) => setField<String>('conditions', value);

  String? get promotionDiscountStartDate =>
      getField<String>('promotion_discount_start_date');
  set promotionDiscountStartDate(String? value) =>
      setField<String>('promotion_discount_start_date', value);

  String? get promotionDiscountEndDate =>
      getField<String>('promotion_discount_end_date');
  set promotionDiscountEndDate(String? value) =>
      setField<String>('promotion_discount_end_date', value);

  int? get promotionDiscountFrecuence =>
      getField<int>('promotion_discount_frecuence');
  set promotionDiscountFrecuence(int? value) =>
      setField<int>('promotion_discount_frecuence', value);

  double? get promotionDiscountQuantity =>
      getField<double>('promotion_discount_quantity');
  set promotionDiscountQuantity(double? value) =>
      setField<double>('promotion_discount_quantity', value);

  double? get promotionDiscountQuantityTop =>
      getField<double>('promotion_discount_quantity_top');
  set promotionDiscountQuantityTop(double? value) =>
      setField<double>('promotion_discount_quantity_top', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get aditionalDiscountTypeId =>
      getField<int>('aditional_discount_type_id');
  set aditionalDiscountTypeId(int? value) =>
      setField<int>('aditional_discount_type_id', value);

  String? get aditionalDiscountTypeName =>
      getField<String>('aditional_discount_type_name');
  set aditionalDiscountTypeName(String? value) =>
      setField<String>('aditional_discount_type_name', value);

  double? get aditionalDiscountAmount =>
      getField<double>('aditional_discount_amount');
  set aditionalDiscountAmount(double? value) =>
      setField<double>('aditional_discount_amount', value);

  double? get aditionalDiscountTop =>
      getField<double>('aditional_discount_top');
  set aditionalDiscountTop(double? value) =>
      setField<double>('aditional_discount_top', value);

  String? get aditionalComments => getField<String>('aditional_comments');
  set aditionalComments(String? value) =>
      setField<String>('aditional_comments', value);

  int? get productTypeId => getField<int>('product_type_id');
  set productTypeId(int? value) => setField<int>('product_type_id', value);

  String? get productTypeName => getField<String>('product_type_name');
  set productTypeName(String? value) =>
      setField<String>('product_type_name', value);
}
