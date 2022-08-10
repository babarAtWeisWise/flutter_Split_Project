import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import '../../../Extensions/Colors.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Hepler/colors.dart';
import 'package:get/get.dart';

class ExpenseDetailsView extends StatefulWidget {
  static const String routeName = "/expensedetails";

  @override
  _ExpenseDetailsState createState() => _ExpenseDetailsState();
}

class _ExpenseDetailsState extends State<ExpenseDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('9 Aug, 2022',
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
      extendBodyBehindAppBar: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      HexColor.fromHex('#FFFFFF'),
                      HexColor.fromHex('#EFF1F5')
                    ],
                  )),
              child: SingleChildScrollView (child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text('expense_details'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .semibold
                                .copyWith(fontSize: 18.sp)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MainLabel(title: "Name:"),
                                  MainLabel(title: "Date"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DescLabel(title: "John Doe"),
                                  DescLabel(title: "30-11-2019"),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MainLabel(title: "Amount"),
                                  MainLabel(title: "Doe it include VAT?"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DescLabel(title: "250 DKK"),
                                  DescLabel(title: "YES"),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MainLabel(title: "VAT %"),
                                  MainLabel(title: "Currency"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DescLabel(title: "25%"),
                                  DescLabel(title: "DKK"),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MainLabel(title: "Deduct or pay out amount")
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DescLabel(title: "Deduct Amount")
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  MainLabel(title: "Expense Account"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  DescLabel(title: "Private"),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  MainLabel(title: "Expense Type"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  DescLabel(title: "Service and Repair"),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  MainLabel(title: "Note"),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              DescLabel(title: "Lorem ipsum dolor sit amet, consectetur adip elit. Curabitur quis erat blandit, interdum mauris eget, vehicula est. Phasellus a felis congue, euismod mauris eu, porta est."),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  Expanded(child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    elevation: 3,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Container(

                                          height: 50.h,
                                          width: 60.w,
                                          child:
                                          Image.network(
                                              'https://media.istockphoto.com/vectors/contract-or-document-signing-icon-document-folder-with-stamp-and-text-vector-id1179640294?k=20&m=1179640294&s=612x612&w=0&h=O2IBtlV52-6gWSAeyozPIFkfZ-LzHnpXBw2tOuUToj8=',
                                               fit: BoxFit.fitWidth,),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Column(
                                          children: [
                                            Text("image1",
                                                maxLines: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 12.sp)),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Text("240kb",
                                                maxLines: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 10.sp,color: Colors.black26))


                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                  SizedBox(
                                    width: 15.w
                                  ),
                                  Expanded(child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    elevation: 3,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Container(

                                          height: 50.h,
                                          width: 60.w,
                                          child:
                                          Image.network(
                                            'https://media.istockphoto.com/vectors/contract-or-document-signing-icon-document-folder-with-stamp-and-text-vector-id1179640294?k=20&m=1179640294&s=612x612&w=0&h=O2IBtlV52-6gWSAeyozPIFkfZ-LzHnpXBw2tOuUToj8=',
                                            fit: BoxFit.fitWidth,),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Column(
                                          children: [
                                            Text("image1",
                                                maxLines: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 12.sp)),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Text("240kb",
                                                maxLines: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 10.sp,color: Colors.black26))


                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 205.h,
                  ),
                ],
              ),
              )
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MainLabel extends StatelessWidget {
  MainLabel({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .medium
              .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),
    );
  }
}

class DescLabel extends StatelessWidget {
  DescLabel({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          maxLines: null,
          style: Theme.of(context)
              .textTheme
              .regular
              .copyWith(fontSize: 14.sp)),
    );
  }
}

