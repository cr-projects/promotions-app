import '../database.dart';

class RelPromotionDayTable extends SupabaseTable<RelPromotionDayRow> {
  @override
  String get tableName => 'rel_promotion_day';

  @override
  RelPromotionDayRow createRow(Map<String, dynamic> data) =>
      RelPromotionDayRow(data);
}

class RelPromotionDayRow extends SupabaseDataRow {
  RelPromotionDayRow(super.data);

  @override
  SupabaseTable get table => RelPromotionDayTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get promotionId => getField<int>('promotion_id')!;
  set promotionId(int value) => setField<int>('promotion_id', value);

  int get dayId => getField<int>('day_id')!;
  set dayId(int value) => setField<int>('day_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
