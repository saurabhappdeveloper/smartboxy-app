import 'package:flutter/material.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/image_data/image_iThinkLogistic.dart';
import 'package:smart_boxy/core/utilities/image_data/my_icon.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// stl
class listadd extends StatelessWidget {
  final String first;
  final String second;
  listadd({this.first, this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListTile(
          leading: ImageSmartBoxy(
            image: AppIconImage.Addresslocation,
          ),
          title: Text(
            first,
            style: Soniya,
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              second,
              style: Soniyaaddress,
            ),
          ),
        ),
      ),
    );
  }
}

class listadd1 extends StatelessWidget {
  final String name;
  final String address;
  listadd1({this.name, this.address});

  @override
  Widget build(BuildContext context) => Container(
        height: 60,
        width: 420,
        child: ListView(
          children: [
            Slidable(
              actionPane: SlidableScrollActionPane(),
              actionExtentRatio: 0.18,
              secondaryActions: <Widget>[
                IconSlideAction(
                  color: Color(0xff3C3C58),
                  icon: Icons.edit,
                  onTap: () => print('Edited'),
                ),
                IconSlideAction(
                  color: Color(0xffFB4F1D),
                  icon: Icons.delete_outline_sharp,
                  onTap: () => print('Delete'),
                )
              ],
              child: ListTile(
                leading: ImageSmartBoxy(
                  image: AppIconImage.Addresslocation1,
                ),
                title: Text(
                  name,
                  style: Soniya,
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    address,
                    style: Soniyaaddress,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
