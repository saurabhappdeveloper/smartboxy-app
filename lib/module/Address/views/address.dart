// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/submitButtonLarge.dart';
import 'package:smart_boxy/module/Address/controller/listaddress.dart';
import 'package:smart_boxy/module/Address/models/importalert.dart';
// ignore: unused_import

class address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<address> {
  double kDefaultPadding = 20;
  BoxShadow kDefaultShadow = BoxShadow(
    offset: Offset(0, 15),
    blurRadius: 16,
    color: Colors.black12, // Black color with 12% opacity
  );
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
    return Scaffold(
        backgroundColor: backgroundColorWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      Variable.Address,
                      style: topAddress,
                    ),
                  ),
                  Container(
                      child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Button background color
                          elevation: 0, // No shadow
                        ),
                        onPressed: () {
                          importalert(context);
                        },
                        child: Text(
                          Variable.import,
                          style: topimport,
                        ),
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(height: 1),
              Padding(
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(kDefaultPadding),
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 12),
                decoration: BoxDecoration(
                    color: Color(0xffF6F6F8),
                    borderRadius: BorderRadius.circular(kDefaultPadding)),
                child: TextField(
                  style: TextStyle(color: Color(0xff73738C)),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      icon: Image.asset('assets/images/search.png'),
                      hintText: "Search Address...",
                      hintStyle: TextStyle(color: Color(0xff73738C))),
                ),
              ),
              SizedBox(height: 2),
              active_tab == 1
                  ? Column(
                      children: [
                        listadd(
                          first: 'Soniya',
                          second: '6391 Elgin St. Celina, Delaware 10299',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd(
                          first: 'Sushmita Patil',
                          second: '3517 W. Gray St. Utica, Pennsylvania 57867',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd(
                          first: 'soniya',
                          second: '6391 Elgin St. Celina, Delaware 10299',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd(
                          first: 'Gokul Chandran',
                          second: '3517 W. Gray St. Utica, Pennsylvania 57867',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd(
                          first: 'SrinathKumble',
                          second:
                              '2972 westheimer Rd. santa Ana, lllinois 85486',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd(
                          first: 'Dheeraj Bhat',
                          second: '4140 Parker Rd. Allentown, New Mexico 31134',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                      ],
                    )
                  : Container(
                      child: Column(
                      children: [
                        listadd1(
                          name: 'Home',
                          address: '6391 Elgin St. Celina, Delaware 10299',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd1(
                          name: 'Bank',
                          address: '3517 W. Gray St. Utica, Pennsylvania 57867',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd1(
                          name: 'Shop',
                          address: '6391 Elgin St. Celina, Delaware 10299',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd1(
                          name: 'Kishore place',
                          address: '3517 W. Gray St. Utica, Pennsylvania 57867',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd1(
                          name: 'Home2',
                          address:
                              '2972 westheimer Rd. santa Ana, lllinois 85486',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                        listadd1(
                          name: 'office',
                          address:
                              '4140 Parker Rd. Allentown, New Mexico 31134',
                        ),
                        Divider(
                          thickness: 2,
                          indent: 70,
                          color: Color(0xffF1F1F4),
                        ),
                      ],
                    )),
              SizedBox(height: 25),
              addButtonLarge(),
              SizedBox(height: 10)
            ],
          ),
        ));
  }
}


// Container(
//   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//   margin: EdgeInsets.symmetric(horizontal: 3),
//   child: addButtonLarge(
//     text: '+ Add New',
//     onTap: () async {},
//   ),
// ),






