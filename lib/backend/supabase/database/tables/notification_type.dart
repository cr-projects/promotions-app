import '../database.dart';

class NotificationTypeTable extends SupabaseTable<NotificationTypeRow> {
  @override
  String get tableName => 'notification_type';

  @override
  NotificationTypeRow createRow(Map<String, dynamic> data) =>
      NotificationTypeRow(data);
}

class NotificationTypeRow extends SupabaseDataRow {
  NotificationTypeRow(super.data);

  @override
  SupabaseTable get table => NotificationTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);
}
