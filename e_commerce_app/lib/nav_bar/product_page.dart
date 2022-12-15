import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/provider/productprovider.dart';
import 'package:e_commerce_app/screens/addproduct.dart';
import 'package:e_commerce_app/screens/editproduct.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProductProvider>(context, listen: false).getProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productList = Provider.of<ProductProvider>(context).productList;
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddProduct()))
              .then((value) =>
                  Provider.of<ProductProvider>(context, listen: false)
                      .getProductData());
        },
        child: Icon(
          Icons.add,
          size: 25,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          "Product",
          style: GoogleFonts.roboto(
              color: Colors.white, fontSize: 26, letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: productList.isEmpty
          ? spinkit
          : Container(
              padding: EdgeInsets.all(10),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) => Container(
                        height: 180,
                        child: Card(
                            elevation: 10,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "${imageUrl}${productList[index].image.toString()}"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productList[index].name.toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Quantity: " +
                                                productList[index]
                                                    .stockItems![0]
                                                    .quantity
                                                    .toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 14, letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Price: " +
                                                productList[index]
                                                    .price![0]
                                                    .originalPrice
                                                    .toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 14, letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Discount: " +
                                                productList[index]
                                                    .price![0]
                                                    .discountedPrice
                                                    .toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 14, letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                  onPressed: (() async {
                                                    var result =
                                                        await CustomeHttpRequest()
                                                            .deleteProduct(
                                                                id: productList[
                                                                        index]
                                                                    .id!
                                                                    .toInt());
                                                    print(
                                                        "result issssssssss${result}");
                                                    if (result["error"] !=
                                                        null) {
                                                      showInToast(
                                                          "${result["error"]}");
                                                    } else {
                                                      showInToast(
                                                          "${result["message"]}");
                                                      Provider.of<ProductProvider>(
                                                              context,
                                                              listen: false)
                                                          .deleteProductById(
                                                              index);
                                                    }
                                                  }),
                                                  icon: Icon(
                                                    Icons.delete,
                                                    size: 25,
                                                    color: Colors.red,
                                                  )),
                                              IconButton(
                                                  onPressed: (() {
                                                    Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                            builder: (context) =>
                                                                EditProductPage(
                                                                  productModel:
                                                                      productList[
                                                                          index],
                                                                )))
                                                        .then((value) => Provider
                                                                .of<ProductProvider>(
                                                                    context,
                                                                    listen:
                                                                        false)
                                                            .getProductData());
                                                  }),
                                                  icon: Icon(
                                                    Icons.edit,
                                                    size: 25,
                                                    color: Colors.blue,
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            )),
                      )),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: productList.length)),
    ));
  }
}
