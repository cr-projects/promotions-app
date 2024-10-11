import '../database.dart';

class RelUserNotificationTypeTable
    extends SupabaseTable<RelUserNotificationTypeRow> {
  @override
  String get tableName => 'rel_user_notification_type';

  @override
  RelUserNotificationTypeRow createRow(Map<String, dynamic> data) =>
      RelUserNotificationTypeRow(data);
}

class RelUserNotificationTypeRow extends SupabaseDataRow {
  RelUserNotificationTypeRow(super.data);

  @override
  SupabaseTable get table => RelUserNotificationTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get notificationTypeId => getField<int>('notification_type_id');
  set notificationTypeId(int? value) =>
      setField<int>('notification_type_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
