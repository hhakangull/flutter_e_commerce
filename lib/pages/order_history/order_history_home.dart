import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/app_bar/general_custom_appbar.dart';
import 'package:e_commerce_full/core/items/bottom_navigation.dart';
import 'package:e_commerce_full/dummy/order_json.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OrderHistoryHome extends StatefulWidget {
  const OrderHistoryHome({Key? key}) : super(key: key);

  @override
  State<OrderHistoryHome> createState() => _OrderHistoryHomeState();
}

class _OrderHistoryHomeState extends State<OrderHistoryHome> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GeneralCustomAppBar(
          text: "Order History",
          actionsIcon: LineIcons.alternateTrash,
          actionsFunc: () => debugPrint("Hello"),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(text: "Reorder"),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(height: 10),
          getTabs(),
          const SizedBox(height: 30),
          pageIndex == 0 ? getCurrentOrderItemList() : getPastOrderItemList()
        ],
      ),
    );
  }

  Widget getTabs() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: secondary.withOpacity(0.12)),
      child: Row(
        children: [
          pageIndex == 0
              ? Flexible(
                  child: ElasticIn(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: (size.width - 45) / 2,
                          height: 50,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: secondary.withOpacity(0.2),
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          child: const Center(
                            child: Text(
                              "Current Orders",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: (size.width - 45) / 2,
                      height: 50,
                      decoration: const BoxDecoration(),
                      child: Center(
                        child: Text(
                          "Current Orders",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: secondary.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          pageIndex == 1
              ? Flexible(
                  child: ElasticIn(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: (size.width - 45) / 2,
                          height: 50,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: secondary.withOpacity(0.2),
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          child: const Center(
                            child: Text(
                              "Past Orders",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: (size.width - 45) / 2,
                      height: 50,
                      decoration: const BoxDecoration(),
                      child: Center(
                        child: Text(
                          "Past Orders",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: secondary.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }

  Widget getCurrentOrderItemList() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(
        currentOrderList.length,
        (index) {
          if (currentOrderList.isNotEmpty) {
            return FadeIn(
              duration: Duration(milliseconds: 800 * index),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: secondary.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              currentOrderList[index]['date'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              'Delivery Processing',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orangeAccent),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width) * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 90,
                                    width: 90,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: secondary
                                                      .withOpacity(0.1)),
                                              color: white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: Image.asset(
                                            currentOrderList[index]['image'],
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          currentOrderList[index]['name'],
                                          style: const TextStyle(fontSize: 16),
                                          maxLines: 2,
                                        ),
                                        Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 3),
                                              child: Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: red,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              currentOrderList[index]['price'],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: secondary.withOpacity(0.15)),
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Total Items: 1",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        currentOrderList[index]['time'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: secondary.withOpacity(0.5)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget getPastOrderItemList() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(
        pastOrderList.length,
        (index) {
          if (pastOrderList.isNotEmpty) {
            return FadeIn(
              duration: Duration(milliseconds: 800 * index),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: secondary.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pastOrderList[index]['date'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              'Delivered',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: (size.width) * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 90,
                                    width: 90,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: secondary
                                                      .withOpacity(0.1)),
                                              color: white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: Image.asset(
                                            pastOrderList[index]['image'],
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          pastOrderList[index]['name'],
                                          style: const TextStyle(fontSize: 16),
                                          maxLines: 2,
                                        ),
                                        Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 3),
                                              child: Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: red,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              pastOrderList[index]['price'],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: secondary.withOpacity(0.15)),
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Total Items: 1",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        pastOrderList[index]['time'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: secondary.withOpacity(0.5)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  TabButton({Key? key, required this.pageIndex}) : super(key: key);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
