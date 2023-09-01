import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _bookingtime = '';
  String get bookingtime => _bookingtime;
  set bookingtime(String _value) {
    _bookingtime = _value;
  }

  bool _pastbooking = false;
  bool get pastbooking => _pastbooking;
  set pastbooking(bool _value) {
    _pastbooking = _value;
  }

  bool _upcomingbooking = false;
  bool get upcomingbooking => _upcomingbooking;
  set upcomingbooking(bool _value) {
    _upcomingbooking = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
