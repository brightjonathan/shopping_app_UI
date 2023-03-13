import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Screens/cardScreenView.dart';

class Details extends StatefulWidget {
  Map? items;
  Details({this.items});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var selected = 0;
  int countItem = 1;

  @override
  Widget build(BuildContext context) {
    //menu
    var menu = ["Details", "Review"];

    //A random calculation to get Total discount
    double discount = (widget.items!['price'] * 10) / 10;
    double totalDiscount = widget.items!['price'] - discount;

    //select colour
    List selectColor = [
      "Green",
      "Black",
      "Silver",
      "Blue",
    ];

    String selectedColor = "";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff06AB8D),
        title: const Text("Dashboard "),
        actions: [
          const Icon(
            Icons.message_outlined,
            size: 24.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 23.0,
          ),
          Stack(
            children: const [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.notifications_outlined,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 8,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 23.0,
          ),
          Stack(
            children: const [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 8,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 23.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 290.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "${widget.items!['photo']}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 27.12,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25.0,
              ),
              child: Text(
                "${widget.items!['product_name']}",
                style: const TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "₦$discount",
                  style: const TextStyle(
                      color: Color(0xff02A88A),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 28.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24.0,
                ),
                Text(
                  "${widget.items!['category']}",
                  style: const TextStyle(
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 11.0,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "5.0",
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const Spacer(),
                // Text(
                //   "₦${widget.items!['price']}",
                //   style: const TextStyle(
                //     fontSize: 10,
                //     fontFamily: 'Poppins',
                //     color: Color(0xffF25822),
                //     fontWeight: FontWeight.normal,
                //     decoration: TextDecoration.lineThrough,
                //   ),
                // ),
                const SizedBox(
                  width: 28.0,
                ),
              ],
            ),
            const SizedBox(
              height: 33.0,
            ),
            Container(
              height: 40.0,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  menu.length,
                  (index) {
                    var menuitem = menu[index];
                    return InkWell(
                      onTap: () {
                        selected = index;

                        setState(() {});
                      },
                      child: Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              menuitem,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                            ),
                            const Spacer(),
                            (selected == index)
                                ? Container(
                                    height: 2.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff01A688),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 250.0,
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: const BoxDecoration(),
              child: IndexedStack(
                index: selected,
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 22.0,
                        ),
                        SizedBox(
                          height: 110,
                          child: Text("${widget.items!['description']}"),
                        ),
                        SizedBox(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Color",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 1.0,
                              ),
                              SizedBox(
                                height: 35.0,
                                child: ListView.builder(
                                  itemCount: selectColor.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    var itemColor = selectColor[index];
                                    return Container(
                                      width: 66.0,
                                      height: 36,
                                      padding: const EdgeInsets.all(10.0),
                                      margin: const EdgeInsets.only(right: 5.0),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0),
                                        ),
                                        border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffC0C8C7),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "$itemColor",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //second container
                  Container(
                    child: Column(
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var item = {};
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                                  ),
                                ),
                                const SizedBox(
                                  width: 13.0,
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Arnold Cuan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            size: 14.0,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.0,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.0,
                                            color: Colors.orange,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.0,
                                            color: Colors.grey,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.0,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      const SizedBox(
                                        height: 32,
                                        width: 288,
                                        child: Expanded(
                                          child: Text(
                                            "I just wanted to express my gratitude towards your great team of people that you have working there. Great job, and excellent service.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w200),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 93.85,
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 27.0,
              width: 88,
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    width: 27.51,
                    height: 27.51,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          9.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffC0C8C7),
                      ),
                    ),
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          countItem--;
                        });
                      },
                      backgroundColor: Colors.white,
                      child: const Icon(FontAwesomeIcons.minus,
                          color: Colors.black, size: 10),
                    ),
                  ),
                  SizedBox(
                    width: 27.51,
                    height: 27.51,
                    child: Center(
                      child: Text(
                        countItem.toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 27.51,
                    height: 27.51,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          9.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffC0C8C7),
                      ),
                    ),
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          countItem++;
                        });
                      },
                      backgroundColor: Colors.white,
                      child: const Icon(FontAwesomeIcons.plus,
                          color: Colors.black, size: 10),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 185.29,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFB039),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(62), // <-- Radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const cardScreenView(),
                    ),
                  );
                },
                child: const Text("Add to cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
