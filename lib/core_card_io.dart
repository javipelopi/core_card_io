import 'dart:async';

import 'package:flutter/services.dart';

class CoreCardIo {
  static const MethodChannel _channel = const MethodChannel('core_card_io');

  static Future<dynamic> scanCard({
    bool requireExpiry = false,
    bool requireCVV = false,
    bool requirePostalCode = false,
    bool requireCardHolderName = false,
    bool restrictPostalCodeToNumericOnly = false,
    bool scanExpiry = true,
    String scanInstructions,
    bool suppressManualEntry = false,
    bool suppressConfirmation = false,
    bool useCardIOLogo = false,
    bool hideCardIOLogo = false,
    bool usePayPalActionbarIcon = true,
    bool keepApplicationTheme = false,
  }) {
    var arguments = {
      "requireExpiry": requireExpiry,
      "requireCVV": requireCVV,
      "requirePostalCode": requirePostalCode,
      "requireCardHolderName": requireCardHolderName,
      "restrictPostalCodeToNumericOnly": restrictPostalCodeToNumericOnly,
      "scanExpiry": scanExpiry,
      "scanInstructions": scanInstructions,
      "suppressManualEntry": suppressManualEntry,
      "suppressConfirmation": suppressConfirmation,
      "useCardIOLogo": useCardIOLogo,
      "hideCardIOLogo": hideCardIOLogo,
      "usePayPalActionbarIcon": usePayPalActionbarIcon,
      "keepApplicationTheme": keepApplicationTheme,
    };
    return _channel.invokeMethod('scanCard', arguments);
  }
}
