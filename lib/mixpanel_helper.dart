import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixPanelHelper {
  static late Mixpanel _mixpanel;

  // Inicia o MixPanel
  static void init(String token) async {
    _mixpanel = await Mixpanel.init(token);
  }

  // Envia um evento
  static void track(String eventName, {Map<String, dynamic>? properties}) {
    _mixpanel.track(eventName, properties: properties);
  }
}
