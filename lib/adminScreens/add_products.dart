import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_girlies_store/tools/app_data.dart';
import 'package:flutter_girlies_store/tools/app_tools.dart';
import 'package:image_picker/image_picker.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  List<DropdownMenuItem<String>> dropDownColors;
  String selectedColor;
  List<String> colorList = new List();

  List<DropdownMenuItem<String>> dropDownSizes;
  String selectedSize;
  List<String> sizeList = new List();
  List<File> imageList;
  Map<int, File> imagesMap = new Map();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorList = new List.from(localColors);
    sizeList = new List.from(localSizes);
    dropDownColors = buildAndGetDropDownItems(colorList);
    dropDownSizes = buildAndGetDropDownItems(sizeList);
    selectedColor = dropDownColors[0].value;
    selectedSize = dropDownSizes[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text("Add Products"),
        centerTitle: false,
        elevation: 0.0,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: new RaisedButton.icon(
                onPressed: pickImage,
                color: Colors.green[700],
                shape: new RoundedRectangleBorder(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0))),
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: new Text(
                  "Images",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
      body: new SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new SizedBox(
              height: 10.0,
            ),
            MultiImagePickerList(
                imageList: imageList,
                removeNewImage: (index) {
                  removeImage(index);
                }),
            new SizedBox(
              height: 10.0,
            ),
            productTextField(
                textTitle: "Product Title", textHint: "Enter Product Title"),
            new SizedBox(
              height: 10.0,
            ),
            productTextField(
                textTitle: "Product Description",
                textHint: "Enter Description",
                height: 180.0),
            new SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                productDropDown(
                    textTitle: "Color",
                    selectedItem: selectedColor,
                    dropDownItems: dropDownColors,
                    changedDropDownItems: changedDropDownColor),
                productDropDown(
                    textTitle: "Size",
                    selectedItem: selectedSize,
                    dropDownItems: dropDownSizes,
                    changedDropDownItems: changedDropDownSize),
              ],
            ),
            new SizedBox(
              height: 20.0,
            ),
            appButton(
                btnTxt: "Add Product",
                onBtnclicked: () {},
                btnPadding: 20.0,
                btnColor: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }

  void changedDropDownColor(String selectedSize) {
    setState(() {
      selectedColor = selectedSize;
    });
  }

  void changedDropDownSize(String selected) {
    setState(() {
      selectedSize = selected;
    });
  }

  pickImage() async {
    File file = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      //imagesMap[imagesMap.length] = file;
      List<File> imageFile = new List();
      imageFile.add(file);
      //imageList = new List.from(imageFile);
      if (imageList == null) {
        imageList = new List.from(imageFile, growable: true);
      } else {
        for (int s = 0; s < imageFile.length; s++) {
          imageList.add(file);
        }
      }
      setState(() {});
    }
  }

  removeImage(int index) async {
    //imagesMap.remove(index);
    imageList.removeAt(index);
    setState(() {});
  }
}
