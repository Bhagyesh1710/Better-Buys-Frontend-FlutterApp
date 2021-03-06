import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/seller.dart';

import '../screens/product_screen.dart';

class SellerItem extends StatelessWidget {
  final Seller? seller;
  final Color backgroundColor;

  const SellerItem({required this.seller, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ProductScreen.routeName,arguments: seller),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        height: 200.0,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 30.0),
                  child: Text(
                    seller!.name!,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    width: 164.0,
                    padding: const EdgeInsets.only(left: 25.0, top: 5.0),
                    child: Text(
                      seller!.address!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13.0,

                      ),
                    )),
                Container(
                  width: 164.0,
                  padding: const EdgeInsets.only(left: 25.0, top: 5.0),
                  child: Text(
                    'No Rating',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 13.0,

                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.network(
                  "https://whoisrishav.com/pk/better-buys/assets/${seller!.image!}"),
            ),
          ],
        ),
      ),
    );
  }
}
