import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/coffee1.png',
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(93, 117, 117, 117),
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(15),
                      bottomEnd: Radius.circular(15),
                    ),
                  ),
                  width: 90,
                  child: Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '4.4',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cappucino',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff2F2D2C),
                    ),
                  ),
                  Text(
                    'with Chocolate',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$4.53',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2F4B4E),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        decoration: BoxDecoration(
                            color: Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
