import 'package:coffee_app/partials/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: height,
              width: width,
              color: Color(0xffF9F9F9),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 390, 0, 0),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: Align(
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          indicatorColor: Colors.transparent,
                          dividerColor: Colors.transparent,
                          tabAlignment: TabAlignment.start,
                          unselectedLabelColor:
                              const Color.fromARGB(255, 47, 47, 47),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          // labelPadding: EdgeInsets.zero
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffC67C4E),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
                                child: Text('Cappuccino'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
                                child: Text('Machiato'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
                                child: Text('Latte'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      // width: width,
                      // height: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            child: GridView.count(
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 1.2),
                              padding: const EdgeInsets.all(20),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2,
                              children: [
                                Product(),
                                Product(),
                                Product(),
                                Product(),
                                Product(),
                                Product(),
                              ],
                            ),
                          ),
                          Text('tab 2'),
                          Text('tab 3'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xff131313),
              height: 285,
              child: SafeArea(
                child: Column(
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
                    const SizedBox(height: 10),
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
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/banner.png',
                        fit: BoxFit.cover,
                        width: width,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffED5151),
                            ),
                            child: Text(
                              'Promo',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Sora',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Buy one get',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 32,
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'one FREE',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 32,
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
