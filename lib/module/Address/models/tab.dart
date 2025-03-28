import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/style/style.dart';

class Tabbss extends StatefulWidget {
  @override
  _TabbssState createState() => _TabbssState();
}

class _TabbssState extends State<Tabbss> {
  var Orange = Orangestyle;

  var Black = blackestyle;
  var active_tab = 1;

  Widget demo = Container(
    padding: EdgeInsets.only(right: 10, top: 3),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(color: Color(0xffFB4F1D)),
            )
          ],
        ),
      ],
    ),
  );
  void changecss() {
    print("done"); // this for show error in console log
    setState(() => Orange = blackestyle);
    setState(() => Black = Orangestyle);
    setState(() => active_tab = 2);
  }

  void changecss1() {
    print("done");
    setState(() => Orange = Orangestyle);
    setState(() => Black = blackestyle);
    setState(() => active_tab = 1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 20),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            InkWell(
              onTap: () => {changecss1()},
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        Variable.Drop,
                        style: Orange,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      active_tab == 1 ? demo : Container(),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () => {changecss()},
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              Variable.Pickup,
                              style: Black,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            active_tab == 2
                                ? demo
                                : Container(), //righthandside = false, lefthandside= true
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   padding: EdgeInsets.only(left: 10, top: 3),
            //   child: Row(
            //     children: [
            //       Column(
            //         children: [
            //           Container(
            //             width: 32,
            //             height: 2,
            //             decoration: BoxDecoration(color: Color(0xffFB4F1D)),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
