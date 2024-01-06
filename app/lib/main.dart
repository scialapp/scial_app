import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:scial_app/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scial_app/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseAnonKey
  );

  runApp(const App());
}

final SupabaseClient client = Supabase.instance.client;