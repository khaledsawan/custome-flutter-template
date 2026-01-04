import 'dart:async';

import 'package:customtemplate/core/network/network_info.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkInfoImpl implements INetworkInfo {
  final InternetConnection _connectionChecker;

  StreamSubscription<InternetStatus>? _subscription;
  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  bool _isConnected = false;
  bool _started = false;

  NetworkInfoImpl(this._connectionChecker);

  @override
  bool get isConnected => _isConnected;

  @override
  Stream<bool> get onConnectivityChanged => _controller.stream;

  @override
  void start() {
    if (_started) return;
    _started = true;

    _subscription = _connectionChecker.onStatusChange.listen(_onStatusChange);
  }

  @override
  void stop() {
    _subscription?.cancel();
    _subscription = null;
    _started = false;
  }

  void _onStatusChange(InternetStatus status) {
    final connected = status == InternetStatus.connected;

    if (_isConnected == connected) return;

    _isConnected = connected;
    _controller.add(connected);
  }
}
