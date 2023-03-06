import 'package:flutter/material.dart';

class DetailProject_screen extends StatefulWidget {
  Map? items;
  DetailProject_screen({this.items, Key? key}) : super(key: key);

  @override
  State<DetailProject_screen> createState() => _DetailProject_screenState();
}

class _DetailProject_screenState extends State<DetailProject_screen> {
  var selected = 0;
  // Map item = {
  //   "photo": "assets/product/product_1.jpg",
  //   "product_name": "Frenzy Pizza",
  //   "price": 25,
  //   "category": "Food",
  //   "description":
  //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  // };

  @override
  Widget build(BuildContext context) {
    //menu
    var menu = ["Details", "Review"];

    //A random calculation to get Total discount
    double discount = (widget.items!['price'] * 10) / 100;
    double totalDiscount = widget.items!['price'] - discount;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff06AB8D),
        title: const Text("Dashboard"),
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
              height: 300.0,
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
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
                      fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.orange,
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
                Text(
                  "₦${widget.items!['price']}",
                  style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xffF25822),
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.lineThrough),
                ),
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
                      onTap: () {},
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
                                  fontWeight: FontWeight.w500, fontSize: 12),
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
                        SizedBox(
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
                            children: const [
                              Text(
                                "Color",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
