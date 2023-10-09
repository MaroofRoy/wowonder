import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wowondertimelineflutterapp/Screens/Groups/GroupsScreen.dart';
import 'package:wowondertimelineflutterapp/ThemesWoWonder.dart';
import 'package:wowondertimelineflutterapp/Util/Servers/Api/CreateGroupApi.dart';
import 'package:wowondertimelineflutterapp/Widget/ScaffoldWidget.dart';
import 'package:wowondertimelineflutterapp/main.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({super.key});

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  var ameen22;
  @override
  @override
  void initState() {
    super.initState();
  }

  String SelectPrivacy = 'Select Privacy'.tr;
  String SelectCategory = 'Select Category'.tr;
  String catid = '0';
  String PrivacyId = '1';
  String namegroupvalue = '';
  String GroupUrlValeue = '';
  String aboutValue = '';
  String categoryValue = '';
  void OnTapSelectCategory(SelectCategory2, catid0) {
    setState(() {
      SelectCategory = SelectCategory2;
      catid = catid0;
    });
    Get.back();
  }

  TextEditingController group_name = TextEditingController();
  TextEditingController group_title = TextEditingController();
  TextEditingController about = TextEditingController();

  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Create Group'.tr,
      centerTitle: true,
      elevation: 0,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Get.isDarkMode
                    ? Color.fromARGB(54, 244, 246, 248)
                    : Color(0xffF4F6F8),
              ),
              child: Form(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: group_title,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Group Name'.tr),
                ),
              )),
            ),
            if (namegroupvalue.isNotEmpty) Text(namegroupvalue),
            SizedBox(height: Get.height * 0.01),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Get.isDarkMode
                    ? Color.fromARGB(54, 244, 246, 248)
                    : Color(0xffF4F6F8),
              ),
              child: Form(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '${accounts[0]['sm0']}/',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: Get.width * 0.4,
                      child: TextField(
                        controller: group_name,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Group URL'),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            if (GroupUrlValeue.isNotEmpty) Text(GroupUrlValeue),
            SizedBox(height: Get.height * 0.01),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Get.isDarkMode
                    ? Color.fromARGB(54, 244, 246, 248)
                    : Color(0xffF4F6F8),
              ),
              child: Form(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: about,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Describe your Group'.tr),
                  maxLength: 100,
                  maxLines: 5,
                ),
              )),
            ),
            if (aboutValue.isNotEmpty) Text(aboutValue),
            SizedBox(height: Get.height * 0.01),
            Container(
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Get.isDarkMode
                    ? Color.fromARGB(54, 244, 246, 248)
                    : Color(0xffF4F6F8),
              ),
              child: Form(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          showAdaptiveActionSheet(
                            context: context,

                            actions: <BottomSheetAction>[
                              BottomSheetAction(
                                title: Text('Other'.tr),
                                onPressed: (BuildContext context) {
                                  OnTapSelectCategory('Other'.tr, '1');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Cars and Vehicles'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Cars and Vehicles'.tr, '2');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Comedy'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Comedy'.tr, '3');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Economics and Trade'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Economics and Trade'.tr, '4');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Education'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Education'.tr, '5');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Entertainment'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Entertainment'.tr, '6');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Movies & Animation'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Movies & Animation'.tr, '7');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Gaming'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Gaming'.tr, '8');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('History and Facts'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'History and Facts'.tr, '9');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Live Style'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Live Style'.tr, '10');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Natural'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Natural'.tr, '11');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('News and Politics'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'News and Politics'.tr, '12');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('People and Nations'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'People and Nations'.tr, '13');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Pets and Animals'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Pets and Animals'.tr, '14');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Places and Regions'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Places and Regions'.tr, '15');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Science and Technology'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Science and Technology'.tr, '16');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Sport'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory('Sport'.tr, '17');
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Travel and Events'.tr),
                                onPressed: (BuildContext context) async {
                                  OnTapSelectCategory(
                                      'Travel and Events'.tr, '18');
                                },
                              ),
                            ],
                            cancelAction: CancelAction(
                                title: Text('Cancel'
                                    .tr)), // onPressed parameter is optional by default will dismiss the ActionSheet
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              SelectCategory,
                              style: TextStyle(
                                  color: SelectCategory == 'Select Category'.tr
                                      ? Colors.grey
                                      : null),
                            ),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ))),
            ),
            if (categoryValue.isNotEmpty) Text('$categoryValue'.tr),
            SizedBox(height: Get.height * 0.01),
            Container(
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Get.isDarkMode
                    ? Color.fromARGB(54, 244, 246, 248)
                    : Color(0xffF4F6F8),
              ),
              child: Form(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          showAdaptiveActionSheet(
                            context: context,

                            actions: <BottomSheetAction>[
                              BottomSheetAction(
                                title: Text('Public'.tr),
                                onPressed: (BuildContext context) {
                                  setState(() {
                                    SelectPrivacy = 'Public'.tr;
                                    PrivacyId = '1';
                                    Get.back();
                                  });
                                },
                              ),
                              BottomSheetAction(
                                title: Text('Private'.tr),
                                onPressed: (BuildContext context) async {
                                  setState(() {
                                    SelectPrivacy = 'Private'.tr;
                                    PrivacyId = '2';
                                    Get.back();
                                  });
                                },
                              ),
                            ],
                            cancelAction: CancelAction(
                                title: Text('Cancel'
                                    .tr
                                    .tr)), // onPressed parameter is optional by default will dismiss the ActionSheet
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              SelectPrivacy,
                              style: TextStyle(
                                  color: SelectPrivacy == 'Select Privacy'.tr
                                      ? Colors.grey
                                      : null),
                            ),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      )
                      //  TextField(
                      //   decoration: InputDecoration(
                      //       border: InputBorder.none, hintText: 'Group Name'),
                      // ),
                      )),
            ),
            SizedBox(height: Get.height * 0.03),
            InkWell(
              onTap: () async {
                var creapi = await CreateGroupApi.create(group_name.text,
                    group_title.text, catid, about.text, PrivacyId);
                print(creapi);
                setState(() {
                  if (creapi['errors'] != null) {
                    if (creapi['errors']['error_text'] ==
                        'group_title (POST) is missing') {
                      namegroupvalue = 'Type the name of the group';
                    } else {
                      namegroupvalue = '';
                    }
                    ;
                    if (creapi['errors']['error_text'] ==
                        'Group name must be between 5 / 32') {
                      GroupUrlValeue = creapi['errors']['error_text'];
                    } else {
                      GroupUrlValeue = '';
                    }
                    if (creapi['errors']['error_text'] ==
                        'error_text: about (POST) is missing') {
                      aboutValue = 'Please write a description';
                    } else {
                      aboutValue = '';
                    }
                    ;

                    if (creapi['errors']['error_text'] ==
                        'category (POST) is missing') {
                      categoryValue = 'Please select a category';
                    } else {
                      categoryValue = '';
                    }
                    ;
                    if (creapi['errors']['error_text'] ==
                        'Group name is already exists.') {
                      GroupUrlValeue = creapi['errors']['error_text'];
                    } else {
                      GroupUrlValeue = '';
                    }
                  } else {
                    Get.back(closeOverlays: true);
                    Get.back(closeOverlays: true);
                    Get.to(GroupsScreen(
                      group_id: creapi['group_data']['id'],
                    ));
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Container(
                    width: Get.width,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Create'.tr),
                    ))),
              ),
            )
          ]),
        ),
      ),
      AppBarTrueOrFalse: true,
      loding: false,
    );
  }
}
