import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthProvider extends ChangeNotifier {
  Session? _session;
  User? _user;
  bool isStudent = true;

  Session? get session {
    return _session;
  }

  User? get user {
    return _user;
  }

  void setAuthData(Session? session, User? user) {
    _session = session;
    _user = user;
    notifyListeners();
  }

  void listen() {
    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      _session = data.session;
      notifyListeners();
    });
  }

  bool isAuth() {
    if (_session == null) {
      return false;
    }
    return _session!.expiresIn! > 0;
  }

  void logout() {
    _session = null;
    _user = null;
    notifyListeners();
  }
}
