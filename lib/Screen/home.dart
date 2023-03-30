import 'package:flutter/material.dart';

import '../helpers/sizedBoxwithWidth4.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:calculator/constant/app_height.dart' as app_height;

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

String expressionText = "";
String resultText = "";

class _CalculatorState extends State<Calculator> {
  // Final result display function
  _pressedbutton(String text) {
    List val = calcButtonPress(text);
    setState(() {
      expressionText = val[0];
      resultText = val[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Expression Container
          Container(
            alignment: Alignment.centerRight,
            height: media.height * app_height.height200,
            child: Text(
              expressionText,
              style: TextStyle(color: Colors.white, fontSize: media.height * app_height.height60),
            ),
          ),

          // SizedBox with height 42
          SizedBox(
            height: media.height * app_height.height42,
          ),

          // Result Container
          Container(
            height: media.height * app_height.height95,
            alignment: Alignment.centerRight,
            child: Text(
              resultText,
              style: TextStyle(color: Colors.white, fontSize: media.height * app_height.height60),
              textAlign: TextAlign.right,
            ),
          ),

          // SizedBox with height 15
          SizedBox(
            height: media.height * app_height.height15,
          ),

          // // Divider
          // Divider(
          //   color: Colors.grey,
          //   height: media.height * app_height.height1,
          // ),

          // Buttons of calculator

          Stack(
            children: [
              Container(
                height: media.height * app_height.height570,
                color: Colors.black,
                child: Column(
                  children: [
                    // SizedBox with  height 4
                    SizedBox(height: media.height * app_height.height4),

                    // First row of buttons
                    Row(
                      children: [
                        // AC button
                        Buttons(
                          textofbutton: numsAndOps[0],
                          onTap: () {
                            _pressedbutton(numsAndOps[0]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of multiplication
                        Buttons(
                          textofbutton: numsAndOps[7],
                          onTap: () {
                            _pressedbutton(numsAndOps[7]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of division
                        Buttons(
                          textofbutton: numsAndOps[3],
                          onTap: () {
                            _pressedbutton(numsAndOps[3]);
                          },
                        ),

                        // SizeBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of cancel
                        Buttons(
                          colorsofButton: Colors.blue,
                          textofbutton: numsAndOps[16],
                          onTap: () {
                            _pressedbutton(numsAndOps[16]);
                          },
                        ),
                      ],
                    ),

                    // SizedBox  with height 4
                    SizedBox(height: media.height * app_height.height4),

                    // 2nd row of buttons
                    Row(
                      children: [
                        // button with  value 7
                        Buttons(
                          textofbutton: numsAndOps[4],
                          onTap: () {
                            _pressedbutton(numsAndOps[4]);
                          },
                        ),

                        // SizedBox with height  4
                        const SizedBoxWithWidth4(),

                        // button with value 8
                        Buttons(
                          textofbutton: numsAndOps[5],
                          onTap: () {
                            _pressedbutton(numsAndOps[5]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button with value 9
                        Buttons(
                          textofbutton: numsAndOps[6],
                          onTap: () {
                            _pressedbutton(numsAndOps[6]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of substraction
                        Buttons(
                          colorsofButton: Colors.blue,
                          textofbutton: numsAndOps[11],
                          onTap: () {
                            _pressedbutton(numsAndOps[11]);
                          },
                        ),
                      ],
                    ),

                    // SizedBox with height 4
                    SizedBox(height: media.height * app_height.height4),

                    // 3rd row of buttons in calculator
                    Row(
                      children: [
                        // Button with value 4
                        Buttons(
                          textofbutton: numsAndOps[8],
                          onTap: () {
                            _pressedbutton(numsAndOps[8]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // Button with value 5
                        Buttons(
                          textofbutton: numsAndOps[9],
                          onTap: () {
                            _pressedbutton(numsAndOps[9]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button with value 6
                        Buttons(
                          textofbutton: numsAndOps[10],
                          onTap: () {
                            _pressedbutton(numsAndOps[10]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of Addition
                        Buttons(
                          colorsofButton: Colors.blue,
                          textofbutton: numsAndOps[15],
                          onTap: () {
                            _pressedbutton(numsAndOps[15]);
                          },
                        ),
                      ],
                    ),

                    // SizedBox with height 4
                    SizedBox(height: media.height * app_height.height4),

                    // 4th row of calculator
                    Row(
                      children: [
                        // button with value 1
                        Buttons(
                          textofbutton: numsAndOps[12],
                          onTap: () {
                            _pressedbutton(numsAndOps[12]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button with value 2
                        Buttons(
                          textofbutton: numsAndOps[13],
                          onTap: () {
                            _pressedbutton(numsAndOps[13]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button with value 3
                        Buttons(
                          textofbutton: numsAndOps[14],
                          onTap: () {
                            _pressedbutton(numsAndOps[14]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),
                      ],
                    ),

                    // SizedBox with height 4
                    SizedBox(height: media.height * app_height.height4),

                    // Last row of buttons in calculator
                    Row(
                      children: [
                        // Button with value .
                        Buttons(
                          textofbutton: numsAndOps[18],
                          onTap: () {
                            _pressedbutton(numsAndOps[18]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // Button with value 0
                        Buttons(
                          textofbutton: numsAndOps[17],
                          onTap: () {
                            _pressedbutton(numsAndOps[17]);
                          },
                        ),

                        // SizedBox with height 4
                        const SizedBoxWithWidth4(),

                        // button of %
                        Buttons(
                          textofbutton: numsAndOps[2],
                          onTap: () {
                            _pressedbutton(numsAndOps[2]);
                          },
                        ),

                        // SizedBox with height 4
                        SizedBox(height: media.height * app_height.height4),
                      ],
                    ),
                  ],
                ),
              ),

              // button of =
              Padding(
                padding: EdgeInsets.symmetric(horizontal: media.width * 6 / 428),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: media.height * 570 / 926,
                  child: Buttons(
                    heightofButton: 224 / 926,
                    colorsofButton: Colors.blue,
                    textofbutton: numsAndOps[19],
                    onTap: () {
                      _pressedbutton(numsAndOps[19]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// list of buttons
List<String> numsAndOps = [
  "AC",
  "\u00B1",
  "%",
  "\u00F7",
  "7",
  "8",
  "9",
  "\u00D7",
  "4",
  "5",
  "6",
  "-",
  "1",
  "2",
  "3",
  "+",
  "\u21A9",
  "0",
  ".",
  "=",
];

// Calculated result
calcButtonPress(String text) {
  if (text != "\u00B1") {
    if (text == "=") {
      Parser p = Parser();
      try {
        Expression exp = p.parse(expressionText);
        ContextModel cm = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, cm);
        resultText = eval.toStringAsPrecision(10);
      } catch (e) {
        resultText = "Syntax Error";
      }
    } else if (text == "%") {
      expressionText += "%";
    } else if (text == "+" || text == "\u00F7" || text == "\u00D7" || text == "-") {
      switch (text) {
        case "\u00F7":
          expressionText += "/";
          break;
        case "\u00D7":
          expressionText += "*";
          break;
        default:
          expressionText += text;
      }
    } else if (text == "AC") {
      expressionText = "";
      resultText = "";
    } else if (text == "\u21A9") {
      expressionText = expressionText.substring(0, expressionText.length - 1);
    } else {
      expressionText += text;
    }
  }
  return [expressionText, resultText];
}
