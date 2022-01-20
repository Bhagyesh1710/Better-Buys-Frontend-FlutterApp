import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/seller.dart';
import '../widgets/seller_item.dart';
class SellerScreen extends StatefulWidget {
  static const routeName = '/sellers-screen';

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  List<Color> sellerItemsBackgroundColor = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    sellerItemsBackgroundColor .add(const Color(0xffE6F3EC));
    sellerItemsBackgroundColor .add(const Color(0xffE6E6F2));
    sellerItemsBackgroundColor .add(const Color(0xffE4EDF4));
    sellerItemsBackgroundColor .add(const Color(0xffE4DAD9));
  }
  @override
  Widget build(BuildContext context) {
    List<Seller> sellers = ModalRoute.of(context)!.settings.arguments as List<Seller>;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header
              Padding(

                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Better Buys',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff4E8489),
                    ),),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              //List of Sellers
              Column(
                children: sellers.map((e) => SellerItem(seller: e,backgroundColor: sellerItemsBackgroundColor[sellers.indexOf(e)% 4],)).toList(),

              ),
            ],
          ),
        ),

      ),
    );
  }
}
