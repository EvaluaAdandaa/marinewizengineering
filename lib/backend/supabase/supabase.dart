import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://bcfpggnpmrekaogdarxa.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJjZnBnZ25wbXJla2FvZ2RhcnhhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA1OTU4NjcsImV4cCI6MjAyNjE3MTg2N30.qI1Ytw4cmkrIEKqyr2ih4x7jqEBcLW61BJm_cUqs0OA';

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
