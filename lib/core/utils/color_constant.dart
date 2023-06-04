import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8fbff');

  static Color black9003a = fromHex('#3a000405');

  static Color deepPurple8007e = fromHex('#7e3a16a6');

  static Color limeA200 = fromHex('#faff2e');

  static Color blueGray100Bf = fromHex('#bfd9d9d9');

  static Color cyan10001 = fromHex('#9de0eb');

  static Color black9003f = fromHex('#3f000000');

  static Color yellowA200 = fromHex('#eaff00');

  static Color yellow600 = fromHex('#ffdf37');

  static Color yellow900Aa = fromHex('#aae08e2e');

  static Color yellowA400 = fromHex('#ffe500');

  static Color gray20001 = fromHex('#ebeaea');

  static Color blueGray90089 = fromHex('#89363636');

  static Color lightBlueA40091 = fromHex('#9100b2ff');

  static Color black9004c = fromHex('#4c000000');

  static Color redA7006b = fromHex('#6bf50000');

  static Color gray600 = fromHex('#746767');

  static Color lime300 = fromHex('#e6da6d');

  static Color pink80087 = fromHex('#87963f4f');

  static Color cyan5008c = fromHex('#8c0cc1c1');

  static Color gray400 = fromHex('#bbb4b4');

  static Color blueGray100 = fromHex('#d2dfe2');

  static Color blueGray500 = fromHex('#6c7a9c');

  static Color tealA100 = fromHex('#b8fff2');

  static Color gray200 = fromHex('#efefef');

  static Color blue50 = fromHex('#e6eefa');

  static Color orange200 = fromHex('#e5cb7c');

  static Color lightGreenA70089 = fromHex('#8925f600');

  static Color indigoA700 = fromHex('#0048f7');

  static Color black90096 = fromHex('#96000000');

  static Color tealA20084 = fromHex('#846feacd');

  static Color whiteA700 = fromHex('#ffffff');

  static Color greenA7008a = fromHex('#8a02ff00');

  static Color whiteA7005e = fromHex('#5effffff');

  static Color purple200 = fromHex('#c67fd2');

  static Color blueGray10001 = fromHex('#c4d7da');

  static Color blueGray10002 = fromHex('#d9d9d9');

  static Color amberA40084 = fromHex('#84ffbf00');

  static Color blueGray10003 = fromHex('#d4d4d4');

  static Color lightGreen100 = fromHex('#d3fab4');

  static Color red60099 = fromHex('#99f52a2a');

  static Color greenA200 = fromHex('#5ede91');

  static Color gray50 = fromHex('#fff9f9');

  static Color blueGray20000 = fromHex('#0099c9d1');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color green40082 = fromHex('#8244ed69');

  static Color limeA20001 = fromHex('#fbff49');

  static Color lightGreen500 = fromHex('#91e43e');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#a4a4a4');

  static Color purpleA700 = fromHex('#a90be1');

  static Color gray50000 = fromHex('#009d9d9d');

  static Color black90028 = fromHex('#28000000');

  static Color purpleA100 = fromHex('#ee86ff');

  static Color amber40077 = fromHex('#77ffca2c');

  static Color yellow100 = fromHex('#f7ffcc');

  static Color black90026 = fromHex('#26000000');

  static Color deepPurpleA700A0 = fromHex('#a0420be1');

  static Color gray700 = fromHex('#5a5a5a');

  static Color tealA10084 = fromHex('#849df8dd');

  static Color blueGray200 = fromHex('#99c9d1');

  static Color gray500 = fromHex('#a3a3a3');

  static Color blueGray400 = fromHex('#888888');

  static Color limeA70091 = fromHex('#91b3f200');

  static Color red7007e = fromHex('#7ebf3a3d');

  static Color tealA40082 = fromHex('#821cffd6');

  static Color purpleA70089 = fromHex('#898900f5');

  static Color orangeA70091 = fromHex('#91ff6007');

  static Color tealA400 = fromHex('#0bdeab');

  static Color gray100 = fromHex('#f6f6f6');

  static Color indigo300 = fromHex('#648fd9');

  static Color whiteA70044 = fromHex('#44ffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color blue4007f = fromHex('#7f5790df');

  static Color greenA20001 = fromHex('#77ffad');

  static Color cyan100 = fromHex('#9ee1ec');

  static Color lightGreenA2006b = fromHex('#6bcbff5d');

  static Color blue400 = fromHex('#5790df');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
