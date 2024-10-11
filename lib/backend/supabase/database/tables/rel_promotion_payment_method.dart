import '../database.dart';

class RelPromotionPaymentMethodTable
    extends SupabaseTable<RelPromotionPaymentMethodRow> {
  @override
  String get tableName => 'rel_promotion_payment_method';

  @override
  RelPromotionPaymentMethodRow createRow(Map<String, dynamic> data) =>
      RelPromotionPaymentMethodRow(data);
}

class RelPromotionPaymentMethodRow extends SupabaseDataRow {
  RelPromotionPaymentMethodRow(super.data);

  @override
  SupabaseTable get table => RelPromotionPaymentMethodTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get promotionId => getField<int>('promotion_id');
  set promotionId(int? value) => setField<int>('promotion_id', value);

  int? get paymentMethodId => getField<int>('payment_method_id');
  set paymentMethodId(int? value) => setField<int>('payment_method_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
