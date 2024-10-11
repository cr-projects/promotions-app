import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://nenxggonfzeiqcqfkqvs.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
