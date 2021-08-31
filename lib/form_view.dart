import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

class FormViewSamples extends StatefulWidget {
  const FormViewSamples({Key? key}) : super(key: key);

  @override
  _FormViewSamplesState createState() => _FormViewSamplesState();
}

class Position {
  final double x1;
  final double x2;
  final double y1;
  final double y2;

  Position({required this.x1, required this.x2, required this.y1, required this.y2});
}

class _FormViewSamplesState extends State<FormViewSamples> {
  final String _sampleImage = 'assets/sample.jpeg';
  List<Position> poistions = [
    Position(x1: 0, x2: 0, y1: 313, y2: 331),
    Position(x1: 0, x2: 268, y1: 550, y2: 0),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width, maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(414, 896),
        orientation: Orientation.portrait);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: buildPaperDesign(context),
    );
  }

  Stack buildPaperDesign(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          _sampleImage,
          fit: BoxFit.fill,
          height: context.height,
        ),

        ...poistions
            .map((e) => Positioned(
                  left: e.x1.w,
                  right: e.x2.w,
                  top: e.y1.h,
                  bottom: e.y2.h,
                  child:
                      Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor))),
                ))
            .toList()

        // Positioned(
        //     left: 0.w,
        //     right: 0.w,
        //     top: 313.h,
        //     bottom: 331.h,
        //     child: Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor)))),

        // Positioned(
        //     left: 0,
        //     right: 268.w,
        //     top: 550.h,
        //     // top: context.dynamicHeight(0.62),
        //     bottom: 0,
        //     child: Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor)))),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //       Offset(createDynamicWidth(0), 0), Offset(createDynamicWidth(440), 200.toDynamicHeight(context))),
        //   child: Container(
        //       decoration: BoxDecoration(
        //     border: Border.all(width: 10, color: Colors.red),
        //   )),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(Offset(createDynamicWidth(0), 230.toDynamicHeight(context)),
        //       Offset(createDynamicWidth(440), 410.toDynamicHeight(context))),
        //   child: Container(
        //       decoration: BoxDecoration(
        //     border: Border.all(width: 10, color: Colors.blue),
        //   )),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //     Offset(0.w, 520.h),
        //     Offset(150.w, 810.h),
        //   ),
        //   child: Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor))),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //     Offset(150.w, 410.toDynamicHeight(context)),
        //     Offset(270.w, 810.toDynamicHeight(context)),
        //   ),
        //   child: Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor))),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //     Offset(275.w, 410.toDynamicHeight(context)),
        //     Offset(400.w, 810.toDynamicHeight(context)),
        //   ),
        //   child: Container(decoration: BoxDecoration(border: Border.all(width: 10, color: context.randomColor))),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //     Offset(createDynamicWidth(135), 410.toDynamicHeight(context)),
        //     Offset(createDynamicWidth(320), 810.toDynamicHeight(context)),
        //   ),
        //   child: Container(
        //       decoration: BoxDecoration(
        //     border: Border.all(width: 10, color: context.randomColor),
        //   )),
        // ),

        // Positioned.fromRect(
        //   rect: Rect.fromPoints(
        //     Offset(createDynamicWidth(320), 410.toDynamicHeight(context)),
        //     Offset(createDynamicWidth(500), 810.toDynamicHeight(context)),
        //   ),
        //   child: Container(
        //       decoration: BoxDecoration(
        //     border: Border.all(width: 10, color: context.randomColor),
        //   )),
        // ),
        // Positioned.fromRelativeRect(
        //   rect: RelativeRect.fromLTRB(0, context.dynamicHeight(calculateValue2(context.height - 370)), 0, 100),
        //   child: Container(
        //     decoration: BoxDecoration(border: Border.all(width: 10, color: Colors.red)),
        //   ),
        // ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   top: context.dynamicHeight(calculateValue2(280)),
        //   bottom: context.dynamicHeight(calculateValue2(context.height - 600)),
        //   child: Container(
        //     decoration: BoxDecoration(border: Border.all(width: 10, color: Colors.red)),
        //   ),
        // ),
        // Positioned(child: CardBuilder())
        // Positioned(
        //   left: 10,
        //   top: 300,
        //   bottom: 200,
        //   right: 10,
        //   child: Container(
        //     color: context.randomColor,
        //     constraints: BoxConstraints(
        //       maxHeight: 200,
        //       maxWidth: 200,
        //     ),
        //   ),
        // ),
        // Positioned(
        //   left: 10,
        //   top: 300,
        //   bottom: 200,
        //   right: 10,
        //   child: Container(
        //     color: context.randomColor,
        //   ),
        // ),
        // LayoutBuilder(
        //   builder: (context, constraints) {
        //     // if () {

        //     // }

        //     final x = constraints.enforce(BoxConstraints(maxHeight: 50, minHeight: 50));

        //     return Container();
        //   },
        // ),
        // Text('data')
      ],
    );
  }
}

class CardBuilder extends StatelessWidget {
  const CardBuilder({Key? key}) : super(key: key);

  double calculateValue(BuildContext context, double val) {
    if (val == 0) {
      return 0;
    }
    return val * 100 / context.height;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final y1 = calculateValue(context, 50);
        final y2 = calculateValue(context, 200);
        print(y1);
        return Padding(
          padding:
              EdgeInsets.only(left: context.dynamicWidth(y1), right: constraints.maxWidth - context.dynamicWidth(y2)),
          child: Container(
            decoration: BoxDecoration(border: Border.all(width: 10)),
          ),
        );
      },
    );
  }
}
