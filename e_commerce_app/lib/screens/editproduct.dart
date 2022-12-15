import 'dart:io';

import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/productmodel.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class EditProductPage extends StatefulWidget {
  ProductModel? productModel;
  EditProductPage({Key? key, required this.productModel}) : super(key: key);

  @override
  State<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController? nameController;
  TextEditingController? quantityController;
  TextEditingController? originalPriceController;
  TextEditingController? discountPriceController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.productModel!.name);
    quantityController = TextEditingController(
        text: widget.productModel!.stockItems![0].quantity.toString());
    originalPriceController = TextEditingController(
        text: widget.productModel!.price![0].originalPrice.toString());
    discountPriceController = TextEditingController(
        text: widget.productModel!.price![0].discountedPrice.toString());
    super.initState();
  }

  bool isLoading = false;
  updateProduct() async {
    try {
      setState(() {
        isLoading = true;
      });
      showInToast("Uploading");
      var uriLink = "${baseUrl}product/${widget.productModel!.id}/update";
      var request = http.MultipartRequest(
        "POST",
        Uri.parse(uriLink),
      );
      request.headers.addAll(await CustomeHttpRequest.getHeaderWithToken());
      request.fields["name"] = nameController!.text.toString();
      request.fields["category_id"] =
          widget.productModel!.foodItemCategory![0].id.toString();
      request.fields["quantity"] = quantityController!.text.toString();
      request.fields["original_price"] =
          originalPriceController!.text.toString();
      request.fields["discounted_price"] =
          discountPriceController!.text.toString();
      request.fields["discount_type"] = "fixed";
      if (image != null) {
        request.files
            .add(await http.MultipartFile.fromPath("image", image!.path));
      }
      var responce = await request.send();
      setState(() {
        isLoading = false;
      });
      var responceData = await responce.stream.toBytes();
      var responceString = String.fromCharCodes(responceData);
      print("Status code is......${responce.statusCode} ${responceString}");
      if (responce.statusCode == 200) {
        showInToast("Product Uploaded succesfully");
        Navigator.of(context).pop();
      } else {
        showInToast("Something Wrong ${responce.statusCode}");
        print("status code is...${responce.statusCode}");
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      showInToast("Something wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLoading == true,
        blur: 0.5,
        opacity: 0.5,
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
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
                      height: 20,
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
                      height: 30,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "name is empty";
                        }
                        if (value.length < 6) {
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
                          return "price is too short";
                        }
                        if (value.length > 8) {
                          return "price is too long";
                        }
                      },
                      controller: originalPriceController,
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
                        if (value.length < 2) {
                          return "discount is too short";
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
                          return "quantity is too short";
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
                      height: 30,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      minWidth: 180,
                      color: Colors.green,
                      onPressed: (() {
                        if (_formKey.currentState!.validate()) {
                          updateProduct();
                        }
                      }),
                      child: Text(
                        "Edit Product",
                        style:
                            GoogleFonts.roboto(fontSize: 14, letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
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
