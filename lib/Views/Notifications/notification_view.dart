import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:get/get.dart';
import '../../../Extensions/Colors.dart';
import '../../../Widgets/custom_appbar.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Hepler/assets.dart';

List _elements = [
  {'title': 'Trip Status Changed!', 'sub_title': 'Your trip status has been changed...', 'group': DateTime(2022, 08, 10)},
  {'title': 'Trip Status Changed!', 'sub_title': 'Your trip status has been changed...', 'group': DateTime(2022, 08, 9)},
  {'title': 'Trip Status Changed!', 'sub_title': 'Your trip status has been changed...', 'group': DateTime(2022, 08, 10)},
  {'title': 'Trip Status Changed!', 'sub_title': 'Your trip status has been changed...', 'group': DateTime(2022, 08, 9)},
  {'title': 'Trip Status Changed!', 'sub_title': 'Your trip status has been changed...', 'group': DateTime(2022, 08, 10)},
];

class NotificationView extends StatefulWidget {
  static const String routeName = "/notification";

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('notifications'.tr,
            style:
                Theme.of(context).textTheme.medium.copyWith(fontSize: 18.sp)),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      extendBodyBehindAppBar: false,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [HexColor.fromHex('#FFFFFF'), HexColor.fromHex('#EFF1F5')],
          )),
          child: _createGroupedListView(),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _createGroupedListView() {
    return GroupedListView<dynamic, DateTime>(
      elements: _elements,
      groupBy: (element) => element['group'],
      groupComparator: (value1, value2) => value2.compareTo(value1),
      itemComparator: (item1, item2) => item1['title'].compareTo(item2['title']),
      order: GroupedListOrder.ASC,
      useStickyGroupSeparators: false,
      groupSeparatorBuilder: (DateTime value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          DateFormat.yMMMd().format(value),
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.semibold.copyWith(fontSize: 16.0),
        ),
      ),
      itemBuilder: (c, element) {
        return Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: SizedBox(
            child: ListTile(
              leading: SvgPicture.asset(
                Assets.ic_trip_status,
                width: 32.r,
                height: 32.r,
              ),
              title: Text(element['title'],style: Theme.of(context).textTheme.medium.copyWith(fontSize: 16.sp),),
              subtitle: Text(element['sub_title'],style: Theme.of(context).textTheme.regular.copyWith(fontSize: 14.sp),),
            ),
          ),
        );
      },
    );
  }
}
