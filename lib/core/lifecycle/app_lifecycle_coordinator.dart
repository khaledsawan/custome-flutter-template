import 'dart:async';
import 'dart:ui';

import 'package:customtemplate/core/lifecycle/i_app_lifecycle_service.dart';
import 'package:customtemplate/core/network/network_info.dart';

class AppLifecycleCoordinator {
  final IAppLifecycleService lifecycle;
  final INetworkInfo networkInfo;

  late final StreamSubscription _sub;

  AppLifecycleCoordinator(this.lifecycle, this.networkInfo);

  void start() {
    lifecycle.start();

    _sub = lifecycle.onStateChanged.listen((state) {
      if (state == AppLifecycleState.resumed) {
        networkInfo.start();
      } else if (state == AppLifecycleState.paused) {
        networkInfo.stop();
      }
    });
  }

  void stop() {
    _sub.cancel();
    lifecycle.stop();
  }
}
