import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/customEmailTextInput.dart';
import 'package:loanapp/shared/sharedComponents/customTextInput.dart';
import 'package:loanapp/shared/sharedComponents/customToast.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'components/uploadLetter.dart';

class Step2 extends StatefulWidget {
  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  TextEditingController IdController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nidaController = TextEditingController();

  TextEditingController tinController = TextEditingController();

  File? image;

  bool sourceGallerySelected = true;

  String dropdownvalue = 'Item 1';

  selectItemHandler(String val) {
    print("selected item is $val");
  }

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
  ];

  Future pickImage() async {
    try {
      final imageCaptured = await ImagePicker().pickImage(
          source:
              sourceGallerySelected ? ImageSource.gallery : ImageSource.camera);
      if (imageCaptured == null) return;

      final imagePermanently = await saveImagePermanently(imageCaptured.path);

      setState(() {
        image = File(imagePermanently.path);
      });
    } on PlatformException catch (e) {
      CustomToast.msg("Please provide permission to the app");
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    String name =
        "profile" + DateTime.now().millisecondsSinceEpoch.toString() + ".png";

    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //
      CustomText(text: "Customer Type"),
      Constants.spaceBetween,
      CustomDropDown(items, selectItemHandler),
      Constants.spaceNextInput,
      //
      CustomText(text: "Select ID Type"),
      Constants.spaceBetween,
      CustomDropDown(items, selectItemHandler),
      Constants.spaceNextInput,

      CustomText(text: "ID Number"),
      Constants.spaceBetween,
      CustomTextInput(IdController),
      Constants.spaceNextInput,

      CustomText(text: "NIDA validation"),
      Constants.spaceBetween,
      CustomTextInput(nidaController),
      Constants.spaceNextInput,

      CustomText(text: "TIN Number(if applicable)"),
      Constants.spaceBetween,
      CustomTextInput(tinController),
      Constants.spaceNextInput,

      CustomText(text: "Add Attachment"),
      Constants.spaceBetween,
      CustomEmailTextInput(emailController),
      Constants.spaceNextInput,

      CustomText(text: "Add Attachment"),
      Constants.spaceBetween,
      CustomEmailTextInput(emailController),
      Constants.spaceNextInput,

      CustomText(text: "Add Attachment"),
      Divider(
        color: Constants.textColor,
        height: 16,
      ),
      UploadLetter("Reference letter 1"),
      UploadLetter("Reference letter 2"),

      Constants.spaceNextInput,

      CustomText(text: "Attach your image"),
      Divider(
        color: Constants.textColor,
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: image == null
                  ? BoxDecoration(
                      border: Border.all(
                          color: Constants.textColor,
                          width: 1.0,
                          style: BorderStyle.solid),
                    )
                  : BoxDecoration(
                      border: Border.all(
                          color: Constants.textColor,
                          width: 1.0,
                          style: BorderStyle.solid),
                      image: DecorationImage(
                          fit: BoxFit.contain, image: FileImage(image!)),
                    )),
          IconButton(
              onPressed: () {
                this.sourceGallerySelected = true;
                pickImage();
              },
              icon: Icon(
                Icons.camera_alt,
                size: 44,
                color: Constants.defaultColor,
              ))
        ],
      )
    ]);
  }
}
