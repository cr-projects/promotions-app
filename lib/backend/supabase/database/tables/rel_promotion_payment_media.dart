import '../database.dart';

class RelPromotionPaymentMediaTable
    extends SupabaseTable<RelPromotionPaymentMediaRow> {
  @override
  String get tableName => 'rel_promotion_payment_media';

  @override
  RelPromotionPaymentMediaRow createRow(Map<String, dynamic> data) =>
      RelPromotionPaymentMediaRow(data);
}

class RelPromotionPaymentMediaRow extends SupabaseDataRow {
  RelPromotionPaymentMediaRow(super.data);

  @override
  SupabaseTable get table => RelPromotionPaymentMediaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get promotionId => getField<int>('promotion_id');
  set promotionId(int? value) => setField<int>('promotion_id', value);

  int? get paymentMediaId => getField<int>('payment_media_id');
  set paymentMediaId(int? value) => setField<int>('payment_media_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
