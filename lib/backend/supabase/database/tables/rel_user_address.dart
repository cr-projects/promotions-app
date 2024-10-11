import '../database.dart';

class RelUserAddressTable extends SupabaseTable<RelUserAddressRow> {
  @override
  String get tableName => 'rel_user_address';

  @override
  RelUserAddressRow createRow(Map<String, dynamic> data) =>
      RelUserAddressRow(data);
}

class RelUserAddressRow extends SupabaseDataRow {
  RelUserAddressRow(super.data);

  @override
  SupabaseTable get table => RelUserAddressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get addressId => getField<int>('address_id');
  set addressId(int? value) => setField<int>('address_id', value);
}
