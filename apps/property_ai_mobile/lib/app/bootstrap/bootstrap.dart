import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/logging/app_logger.dart';
import '../app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (FlutterErrorDetails details) {
    AppLogger.error(
      'Flutter Framework Error',
      details.exception,
      details.stack,
    );
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    AppLogger.error('Platform Error', error, stack);
    return true;
  };

  AppLogger.info('Initializing SiriConnect...');
  AppLogger.info('Initialization completed.');

  runApp(const ProviderScope(child: SiriConnectApp()));
}
