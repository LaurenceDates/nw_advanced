/// This component is NOT isolation compatible
class Operations {
  static final Map<String, int> _operations = {};

  /// Don't call this in isolation
  static Future<bool> operation({required String name, int? start}) async {
    if (!_operations.containsKey(name)) {
      print("Operation \"$name\" is starting");
      final int now = start ?? DateTime.now().millisecondsSinceEpoch;
      _operations[name] = now;
      return true;
    } else {
      for (int i = 1; i <= 3000; i++) {
        if (await Future.delayed(const Duration(milliseconds: 100)).then((value) => _operations.containsKey(name))) {
          continue;
        } else {
          return false;
        }
      }
      // i == 3000 && true
      print("Waited for a parallel operation \"$name\" to finish, but it did not finish in 300 sec.");
      return false;
    }
  }

  /// Don't call this in isolation
  static void finish(String name) {
    int? start = _operations[name];
    final int now = DateTime.now().millisecondsSinceEpoch;

    if (start != null) {
      print("operation \"$name\" finished in ${(now - start)/1000} sec.");
    } else {
      print("operation \"$name\" finished, but the operation was not in the records.");
    }
    _operations.remove(name);
  }
}