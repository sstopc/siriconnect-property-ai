import 'app/bootstrap/bootstrap.dart';
import 'core/logging/app_logger.dart';

Future<void> main() async {
  await bootstrap();
  AppLogger.info('SiriConnect Started');
}