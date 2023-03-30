import 'package:flutter/cupertino.dart';
import 'package:calculator/constant/app_height.dart' as app_height;

class SizedBoxWithWidth4 extends StatelessWidget {
  const SizedBoxWithWidth4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width * app_height.height4,
    );
  }
}
