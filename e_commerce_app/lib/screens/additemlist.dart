import 'dart:io';

import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/categoriesmodel.dart';
import 'package:e_commerce_app/provider/categoriesprovider.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  String? categoryType;
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    Provider.of<CategoriesProvider>(context, listen: false).getCategoryData();
    super.initState();
  }

  bool isLoading = true;
  uploadProduct() async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
      String uriLink = "${baseUrl}category/store";
      var request = await http.MultipartRequest("POST", Uri.parse(uriLink));
      request.headers.addAll(await CustomeHttpRequest.getHeaderWithToken());
      request.fields["name"] = nameController.text.toString();
      request.fields["icon"] = "fixed";

      var photo = await http.MultipartFile.fromPath("image", image!.path);
      request.files.add(photo);
      var responce = await request.send();
      var responceData = await responce.stream.toBytes();
      var responceString = String.fromCharCodes(responceData);
      print("responce bodyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy ${responceString}");
      print("Status code issss${responce.statusCode}}");
      if (responce.statusCode == 201) {
        showInToast("Product Uploaded Succesfully");

        Navigator.of(context).pop();
      } else {
        showInToast("Something wrong, try again plz bro");
        print("Status code issss${responce.statusCode}}");
      }
    }
  }

  List<CategoriesModel> categoryList = [];
  @override
  Widget build(BuildContext context) {
    categoryList = Provider.of<CategoriesProvider>(context).categoryList;
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Choose Category",
                      style: GoogleFonts.roboto(fontSize: 20, letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.grey, width: 0.2),
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60,
                      child: Center(
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                          decoration: InputDecoration.collapsed(hintText: ''),
                          value: categoryType,
                          hint: Text(
                            'Select Category',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              categoryType = newValue;
                              print("my Category is $categoryType");

                              // print();
                            });
                          },
                          validator: (value) =>
                              value == null ? 'field required' : null,
                          items: categoryList.map((item) {
                                return DropdownMenuItem(
                                  child: Text(
                                    "${item.name}",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  value: item.id.toString(),
                                );
                              })?.toList() ??
                              [],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      //overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: image == null
                              ? InkWell(
                                  onTap: () {
                                    getImageformGallery();
                                  },
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.image,
                                          color: Colors.green,
                                          size: 40,
                                        ),
                                        Text(
                                          "UPLOAD",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Image.file(
                                    image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "name is empty";
                        }
                        if (value.length < 3) {
                          return "name is too long";
                        }
                        if (value.length > 16) {
                          return "name is too long";
                        }
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Enter your name",
                          labelText: "Enter your name",
                          hintStyle: GoogleFonts.lobster(
                              color: Colors.black, fontSize: 16),
                          labelStyle: GoogleFonts.lobster(color: Colors.black),
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      minWidth: 180,
                      color: Colors.green,
                      onPressed: (() {
                        if (_formKey.currentState!.validate()) {
                          uploadProduct();
                        }
                      }),
                      child: Text(
                        "Add Categories",
                        style:
                            GoogleFonts.roboto(fontSize: 14, letterSpacing: 1),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  File? image;
  final picker = ImagePicker();

  Future getImageformGallery() async {
    print('on the way of gallery');
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        image = File(pickedImage.path);
        print('image found');
        print('${image!.path}');
      } else {
        print('no image found');
      }
    });
  }
}
