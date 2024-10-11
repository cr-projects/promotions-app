import '../database.dart';

class DistrictTable extends SupabaseTable<DistrictRow> {
  @override
  String get tableName => 'district';

  @override
  DistrictRow createRow(Map<String, dynamic> data) => DistrictRow(data);
}

class DistrictRow extends SupabaseDataRow {
  DistrictRow(super.data);

  @override
  SupabaseTable get table => DistrictTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get provinceId => getField<int>('province_id')!;
  set provinceId(int value) => setField<int>('province_id', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);
}
