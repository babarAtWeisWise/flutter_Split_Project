import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletons/skeletons.dart';

class ShimmerAnim {
  Widget availableVehicleShimmerAnim(context) {
    return Container(
      height: 360.h,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SkeletonItem(
                  child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SkeletonAvatar(
                        style: SkeletonAvatarStyle(shape: BoxShape.rectangle, width: 20, height: 20),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: SkeletonParagraph(
                          style: SkeletonParagraphStyle(
                              lines: 2,
                              padding: const EdgeInsets.all(0),
                              spacing: 6,
                              lineStyle: SkeletonLineStyle(
                                randomLength: true,
                                height: 20.h,
                                borderRadius: BorderRadius.circular(8),
                                minLength: MediaQuery.of(context).size.width / 6,
                                maxLength: MediaQuery.of(context).size.width / 2,
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SkeletonParagraph(
                          style: SkeletonParagraphStyle(
                              lines: 2,
                              padding: const EdgeInsets.all(0),
                              spacing: 6,
                              lineStyle: SkeletonLineStyle(
                                randomLength: true,
                                height: 10,
                                borderRadius: BorderRadius.circular(8),
                                minLength: MediaQuery.of(context).size.width / 6,
                                maxLength: MediaQuery.of(context).size.width / 3,
                              )),
                        ),
                      ),
                      SkeletonAvatar(
                        style: SkeletonAvatarStyle(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 40,
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }

  Widget availableVehicleShimmerAnimVer(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SkeletonItem(
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SkeletonAvatar(
                            style: SkeletonAvatarStyle(shape: BoxShape.rectangle, width: 20, height: 20),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: SkeletonParagraph(
                              style: SkeletonParagraphStyle(
                                  lines: 2,
                                  padding: const EdgeInsets.all(0),
                                  spacing: 6,
                                  lineStyle: SkeletonLineStyle(
                                    randomLength: true,
                                    height: 20.h,
                                    borderRadius: BorderRadius.circular(8),
                                    minLength: MediaQuery.of(context).size.width / 6,
                                    maxLength: MediaQuery.of(context).size.width / 2,
                                  )),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      SkeletonAvatar(
                        style: SkeletonAvatarStyle(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 5,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SkeletonParagraph(
                              style: SkeletonParagraphStyle(
                                  lines: 2,
                                  padding: const EdgeInsets.all(0),
                                  spacing: 6,
                                  lineStyle: SkeletonLineStyle(
                                    randomLength: true,
                                    height: 10,
                                    borderRadius: BorderRadius.circular(8),
                                    minLength: MediaQuery.of(context).size.width / 6,
                                    maxLength: MediaQuery.of(context).size.width / 3,
                                  )),
                            ),
                          ),
                          SkeletonAvatar(
                            style: SkeletonAvatarStyle(
                              width: MediaQuery.of(context).size.width / 4,
                              height: 40,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }


  Widget skeletonVer(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: SkeletonItem(
            child: Row(
              children: [
                Expanded(
                  child: SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 3,
                        padding: const EdgeInsets.all(0),
                        spacing: 6,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                          height: 15,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 6,
                          maxLength: MediaQuery.of(context).size.width / 2,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Expanded(
                  child: SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget skeletonQuestions(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: SkeletonItem(
            child: Column(
              children: [
                SkeletonParagraph(
                  style: SkeletonParagraphStyle(
                      lines: 1,
                      padding: const EdgeInsets.all(0),
                      spacing: 6,
                      lineStyle: SkeletonLineStyle(
                        randomLength: false,
                        height: 15,
                        borderRadius: BorderRadius.circular(8),
                        width: MediaQuery.of(context).size.width / 1.5,
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    SkeletonAvatar(
                      style: SkeletonAvatarStyle(
                        width: 80,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SkeletonAvatar(
                      style: SkeletonAvatarStyle(
                        width: 80,
                        height: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget faqQuestions(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: SkeletonItem(
            child: Column(
              children: [
                SkeletonParagraph(
                  style: SkeletonParagraphStyle(
                      lines: 2,
                      padding: const EdgeInsets.all(0),
                      spacing: 6,
                      lineStyle: SkeletonLineStyle(
                        randomLength: false,
                        height: 8,
                        borderRadius: BorderRadius.circular(8),
                        width: MediaQuery.of(context).size.width ,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

