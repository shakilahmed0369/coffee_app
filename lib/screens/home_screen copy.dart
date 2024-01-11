import 'package:coffee_app/partials/theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.black87,
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text(
                      'Location',
                      style: TextStyle(
                          color: Color(0xFFB7B7B7),
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.12),
                    ),
                    subtitle: const Row(
                      children: [
                        Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyle(
                            color: Color(0xFFDDDDDD),
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFDDDDDD),
                        )
                      ],
                    ),
                    trailing: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.asset('images/avatar.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    decoration: BoxDecoration(
                      color: Color(0xff313131),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Image.asset('images/search-normal.png'),
                          suffixIcon: Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              decoration: BoxDecoration(
                                  color: Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset('images/setting-icon.png'))),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Positioned(
                  bottom: -100,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
                    color: Colors.red,
                  )),
              Text('heloo')
            ],
          ),
        ),
      ),
    );
  }
}