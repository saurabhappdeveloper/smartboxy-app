import 'package:flutter/material.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/image_data/image_iThinkLogistic.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/submitButtonLarge.dart';
import 'package:smart_boxy/module/Address/models/importalert.dart';

class addaddress extends StatefulWidget {
  const addaddress({Key key}) : super(key: key);

  @override
  _addaddressState createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  double kDefaultPadding = 12;
  BoxShadow kDefaultShadow = BoxShadow(
    offset: Offset(0, 15),
    blurRadius: 10,
    color: Colors.black12, // Black color with 12% opacity
  );
  String groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3C3C58)),
              ),
              Text(
                'Back',
                style: TextStyle(color: Color(0xFF3C3C58)),
              ),
            ],
          ),
          elevation: 0,
        ),
        backgroundColor: backgroundColorWhite,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 32,
              padding: EdgeInsets.only(left: 8),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                Variable.AddDropAdress,
                style: adddropaddress,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ImageSmartBoxy(
                image: AppIconImage.addmap,
              ),
            ),
            SizedBox(height: 18),
            Row(children: [
              Container(
                padding: EdgeInsets.only(left: 22),
                child: ImageSmartBoxy(
                  image: AppIconImage.addlocation,
                  boxFit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    width: MediaQuery.of(context).size.width * 0.61,
                    child: Text(
                      Variable.Goregoanwest,
                      style: goregoanwest,
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
                          Variable.Change,
                          style: Change,
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ]),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              child: Text(
                Variable.ShaktiNiwasstationroad,
                style: ShaktiNiwasstationroad,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 31),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding / 12),
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F8),
                  borderRadius: BorderRadius.circular(kDefaultPadding)),
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Address...",
                      hintStyle: TextStyle(color: Color(0xff73738C))),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding / 12),
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F8),
                  borderRadius: BorderRadius.circular(kDefaultPadding)),
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: Color(0xff73738C)),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Recipient Landmark",
                      hintStyle: TextStyle(color: Color(0xff73738C))),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 24),
              //  width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: <Widget>[
                  Radio(
                      value: 'Yes',
                      groupValue: groupValue,
                      activeColor: Colors.deepOrange,
                      onChanged: (value) {
                        setState(() {
                          this.groupValue = value;
                        });
                      }),
                  Text(Variable.Home, style: HomeShopCustom),
                  SizedBox(width: 30),
                  Radio(
                      value: 'No',
                      activeColor: Colors.deepOrange,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          this.groupValue = value;
                        });
                      }),
                  Text(Variable.Shop, style: HomeShopCustom),
                  SizedBox(width: 30),
                  Radio(
                      value: 'Other',
                      activeColor: Colors.deepOrange,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          this.groupValue = value;
                        });
                      }),
                  Text(Variable.Custom, style: HomeShopCustom),
                ],
              ),
            ),
            SizedBox(height: 19),
            Container(
              padding: EdgeInsets.all(0),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.87,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Recipient Full Name',
                                border: InputBorder.none,
                                counter: SizedBox(
                                  width: 0,
                                  height: 0,
                                )),
                          ),
                        ),
                        color: Colors.grey.shade100,
                        height: 80,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ListTile(
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 2, bottom: 12),
                            child: Image.asset('assets/images/contact1.png'),
                          ),
                        ),
                        color: Colors.grey.shade200,
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 21),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: MediaQuery.of(context).size.width * 0.97,
                height: 52,
                child: Stack(children: <Widget>[
                  Container(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            color: Color.fromRGBO(246, 246, 248, 1),
                          ))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(80, 8, 0, 16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Recipient Mobile Number',
                        ),
                        style: TextStyle(
                          color: Color.fromRGBO(59, 59, 88, 1),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        color: Color.fromRGBO(241, 241, 244, 1),
                      ),
                      padding: EdgeInsets.only(top: 3),
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        '+91',
                        textAlign: TextAlign.left,
                        style: country_code_style,
                      )),
                ])),
            SizedBox(height: 70),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: submitButtonLarge(
                text: 'Submit',
                onTap: () async {},
              ),
            ),
            SizedBox(height: 40)
          ]),
        ));
  }
}
