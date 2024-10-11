import '../database.dart';

class RelPromotionAditionalPaymentMethodTable
    extends SupabaseTable<RelPromotionAditionalPaymentMethodRow> {
  @override
  String get tableName => 'rel_promotion_aditional_payment_method';

  @override
  RelPromotionAditionalPaymentMethodRow createRow(Map<String, dynamic> data) =>
      RelPromotionAditionalPaymentMethodRow(data);
}

class RelPromotionAditionalPaymentMethodRow extends SupabaseDataRow {
  RelPromotionAditionalPaymentMethodRow(super.data);

  @override
  SupabaseTable get table => RelPromotionAditionalPaymentMethodTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get promotionId => getField<int>('promotion_id');
  set promotionId(int? value) => setField<int>('promotion_id', value);

  int? get aditionalPaymentMethodId =>
      getField<int>('aditional_payment_method_id');
  set aditionalPaymentMethodId(int? value) =>
      setField<int>('aditional_payment_method_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
