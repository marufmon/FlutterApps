import 'dart:io';

import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/categoriesmodel.dart';
import 'package:e_commerce_app/model/productmodel.dart';
import 'package:e_commerce_app/provider/categoriesprovider.dart';
import 'package:e_commerce_app/provider/productprovider.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? productType;
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController orginalPriceController = TextEditingController();
  TextEditingController discountPriceController = TextEditingController();
  TextEditingController discountTypeController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false).getProductData();
    super.initState();
  }

  bool isLoading = true;
  uploadProduct() async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
      String uriLink = "${baseUrl}product/store";
      var request = http.MultipartRequest("POST", Uri.parse(uriLink));
      request.headers.addAll(await CustomeHttpRequest.getHeaderWithToken());
      request.fields["name"] = nameController.text.toString();
      request.fields["category_id"] = productType.toString();
      request.fields["quantity"] = quantityController.text.toString();
      request.fields["original_price"] = orginalPriceController.text.toString();
      request.fields["discounted_price"] =
          discountPriceController.text.toString();
      request.fields["discount_type"] = "fixed";
      var photo = await http.MultipartFile.fromPath("image", image!.path);
      request.files.add(photo);
      var responce = await request.send();
      var responceData = await responce.stream.toBytes();
      var responceString = String.fromCharCodes(responceData);
      print("Maruf...... ${responceString}");
      print(
          "Maruf is......${responce.statusCode} ${request.fields} ${request.files.toString()}");
      if (responce.statusCode == 201) {
        showInToast("Product Uploaded Succesfully");

        Navigator.of(context).pop();
      } else {
        showInToast("Something wrong, try again plz bro");
      }
    }
  }

  List<ProductModel> categoryList = [];
  @override
  Widget build(BuildContext context) {
    categoryList = Provider.of<ProductProvider>(context).productList;
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
                      "Choose Add Product",
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
                          value: productType,
                          hint: Text(
                            'Select Product',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              productType = newValue;
                              print("my Product is $productType");

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
                          return "name is too short";
                        }
                        if (value.length > 16) {
                          return "name is too Long";
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
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "price is empty";
                        }
                        if (value.length < 2) {
                          return "price is too long";
                        }
                        if (value.length > 8) {
                          return "price is too long";
                        }
                      },
                      controller: orginalPriceController,
                      decoration: InputDecoration(
                          hintText: "Enter your  price",
                          labelText: "Enter your price",
                          hintStyle: GoogleFonts.lobster(
                              color: Colors.black, fontSize: 16),
                          labelStyle: GoogleFonts.lobster(color: Colors.black),
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.money,
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
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "discount is empty";
                        }
                        if (value.length < 3) {
                          return "discount is too long";
                        }
                        if (value.length > 8) {
                          return "discount is too long";
                        }
                      },
                      controller: discountPriceController,
                      decoration: InputDecoration(
                          hintText: "Enter your discount",
                          labelText: "Enter your discount",
                          hintStyle: GoogleFonts.lobster(
                              color: Colors.black, fontSize: 16),
                          labelStyle: GoogleFonts.lobster(color: Colors.black),
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.discount,
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
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "quantity is empty";
                        }
                        if (value.length < 1) {
                          return "quantity is too long";
                        }
                        if (value.length > 8) {
                          return "quantity is too long";
                        }
                      },
                      controller: quantityController,
                      decoration: InputDecoration(
                          hintText: "Enter the quantity",
                          labelText: "Enter the quantity",
                          hintStyle: GoogleFonts.lobster(
                              color: Colors.black, fontSize: 16),
                          labelStyle: GoogleFonts.lobster(color: Colors.black),
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.high_quality,
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
                      height: 60,
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
                        uploadProduct();
                      }),
                      child: Text(
                        "Add Product",
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
