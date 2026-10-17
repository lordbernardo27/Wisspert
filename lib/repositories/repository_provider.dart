import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'repository.dart';

Provider<T> createRepositoryProvider<T extends Repository>(
  T Function(Ref ref) create,
) {
  return Provider<T>(create);
}
