import 'package:aparantiya_agent/constants/enums/enum.dart';
import 'package:flutter/widgets.dart';

class ProviderModifier extends ChangeNotifier {
  Timeline timeline = Timeline.today;
  void updateTimeline(Timeline value) {
    timeline = value;
    notifyListeners();
  }

  bool gpsLocationAccess = false;
  void updateGPSLocationAccess(bool value) {
    gpsLocationAccess = value;
    notifyListeners();
  }
}
