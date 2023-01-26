import '../controller/chats_1_chats_and_inbox_controller.dart';
import '../models/listellipseeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:geok_en_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class ListellipseelevenItemWidget extends StatelessWidget {
  ListellipseelevenItemWidget(this.listellipseelevenItemModelObj);

  ListellipseelevenItemModel listellipseelevenItemModelObj;

  var controller = Get.find<Chats1ChatsAndInboxController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: getPadding(
        left: 29,
        top: 15,
        right: 29,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineGray8001e,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getSize(
              50.00,
            ),
            width: getSize(
              50.00,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11,
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      25.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(
                      8.00,
                    ),
                    width: getSize(
                      8.00,
                    ),
                    margin: getMargin(
                      right: 4,
                      bottom: 1,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.green500,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          4.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.whiteA700,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgUser,
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 6,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_redhill_staff".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold14Black900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.37,
                    ),
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "msg_understood_will".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.37,
                      ),
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 5,
              right: 2,
              bottom: 31,
            ),
            child: Text(
              "lbl_10_19am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular10.copyWith(
                letterSpacing: getHorizontalSize(
                  0.37,
                ),
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
