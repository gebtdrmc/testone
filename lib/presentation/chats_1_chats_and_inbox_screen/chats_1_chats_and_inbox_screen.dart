import '../chats_1_chats_and_inbox_screen/widgets/listellipseeleven_item_widget.dart';
import 'controller/chats_1_chats_and_inbox_controller.dart';
import 'models/listellipseeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:geok_en_s_application7/core/app_export.dart';
import 'package:geok_en_s_application7/widgets/app_bar/appbar_iconbutton.dart';
import 'package:geok_en_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:geok_en_s_application7/widgets/custom_button.dart';

class Chats1ChatsAndInboxScreen
    extends GetWidget<Chats1ChatsAndInboxController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(62.00),
                leadingWidth: 35,
                leading: CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
                    height: getSize(19.00),
                    width: getSize(19.00),
                    margin: getMargin(left: 16, top: 21, bottom: 21),
                    onTap: () {
                      onTapImgArrowleft();
                    }),
                title: Row(children: [
                  Padding(
                      padding: getPadding(left: 16, top: 22, bottom: 22),
                      child: Text("lbl_chats_and_inbox".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold14.copyWith(
                              letterSpacing: getHorizontalSize(0.37),
                              height: getVerticalSize(1.00)))),
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 96, top: 8, bottom: 6))
                ]),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgEdit,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 6))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Row(children: [
                                    CustomButton(
                                        height: 32,
                                        width: 73,
                                        text: "lbl_chats".tr),
                                    Padding(
                                        padding: getPadding(
                                            left: 32, top: 7, bottom: 7),
                                        child: Text("lbl_notifications".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.37),
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(33.00),
                                  width: getHorizontalSize(323.00),
                                  margin: getMargin(left: 13, top: 32),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(left: 62),
                                                child: Text("lbl_chats".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold14
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.37),
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text(
                                                          "lbl_group_chats".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.37),
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Container(
                                                      height:
                                                          getVerticalSize(2.00),
                                                      width: getHorizontalSize(
                                                          182.00),
                                                      margin:
                                                          getMargin(top: 12),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .deepPurpleA100))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(1.00));
                                      },
                                      itemCount: controller
                                          .chats1ChatsAndInboxModelObj
                                          .value
                                          .listellipseelevenItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListellipseelevenItemModel model =
                                            controller
                                                    .chats1ChatsAndInboxModelObj
                                                    .value
                                                    .listellipseelevenItemList[
                                                index];
                                        return ListellipseelevenItemWidget(
                                            model);
                                      })))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
