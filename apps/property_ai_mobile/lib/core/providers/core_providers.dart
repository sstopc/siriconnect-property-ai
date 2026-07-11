import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/network/api_client.dart';
import '../services/storage/secure_storage_service.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final storageProvider = Provider<SecureStorageService>(
  (ref) => SecureStorageService(),
);
