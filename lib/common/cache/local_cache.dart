import 'package:injectable/injectable.dart';

abstract class ILocalCache {
  T? get<T>(String key);
  Future<void> set<T>(String key, T value);
}

@Injectable(as: ILocalCache)
class InMemoryLocalCache implements ILocalCache {
  final cached = <String, dynamic>{};

  @override
  T? get<T>(String key) {
    return cached[key] as T?;
  }

  @override
  Future<void> set<T>(String key, T value) async {
    cached[key] = value;
  }
}
