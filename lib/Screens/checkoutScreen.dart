import 'package:flutter/material.dart';
//import '../Services/service_grocery.dart';
import '../Screens/Home_Screen.dart';

class checkOutScreeen extends StatefulWidget {
  const checkOutScreeen({Key? key}) : super(key: key);

  @override
  State<checkOutScreeen> createState() => _checkOutScreeenState();
}

class _checkOutScreeenState extends State<checkOutScreeen> {
  //mannuel storage...
  List dataCheckout = [
    {
      "photo": "assets/product/product_1.jpg",
      "product_name": "Frenzy Pizza",
      "price": 5000,
      "category": "Food",
      "description":
          "Pizza is sold fresh or frozen, and whole or in portion-size slices. Methods have been developed to overcome challenges such as preventing the sauce from combining with the dough, and producing a crust that can be frozen and reheated without becoming rigid. There are frozen pizzas with raw ingredients and self-rising crusts.",
    },
    {
      "photo": "assets/product/product_2.jpg",
      "product_name": "Beef Burger",
      "price": 2500,
      "category": "Food",
      "description":
          "A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor.",
    },
  ];

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff06AB8D),
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.black,
          ),
        ),
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
          const SizedBox(
            width: 23.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 115.99,
                width: 335,
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Shipping Address",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 90.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Lekki-Ajah (Sangotedo) Lagos, Nigeria",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Change address",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff01A688),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 204.75,
                width: 335,
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Summary Item",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 180.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          dataCheckout.length,
                          (index) {
                            var item = dataCheckout[index];
                            return ListTile(
                              leading: Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${item['photo']}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(
                                "${item['product_name']}",
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                "₦${item['price']}",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff02A88A),
                                    fontWeight: FontWeight.normal),
                              ),
                              trailing: const Text(
                                "Quantity 1",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xffBABEBF),
                                    fontWeight: FontWeight.normal),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 70.99,
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Enter Coupon Code",
                              style: TextStyle(
                                  color: Color(0xffBABEBF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Spacer(),
                          Container(
                            width: 102,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xff01A688),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              color: const Color(0xff01A688).withOpacity(0.1),
                            ),
                            child: const Center(
                              child: Text(
                                "USE Coupon",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 9.22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff01A688),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 180,
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Summary Order",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 120.99,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text("Delivery Fee",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                              Spacer(),
                              Text("₦1500",
                                  style: TextStyle(
                                      color: Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: const [
                              Text(
                                "Subtotal",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xff516971),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                              Spacer(),
                              Text("₦56,460",
                                  style: TextStyle(
                                      color: Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: const [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xff516971),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                              Spacer(),
                              Text(
                                "₦0,00",
                                style: TextStyle(
                                    color: Color(0xff516971),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 116.44,
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              32.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Total Payment",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff516971),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                Text("₦57,960",
                    style: TextStyle(
                        color: Color(0xff02A88A),
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ],
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
                onPressed: () async {
                  isLoading = true;
                  print(isLoading);
                  setState(() {});
                  Future.delayed(
                    const Duration(seconds: 3),
                    () async {
                      isLoading = false;
                      setState(() {});
                      print(isLoading);
                      await showDialog<void>(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            actions: [
                              Container(
                                height: 430.0,
                                width: 335,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 108.0,
                                      width: 108,
                                      margin: const EdgeInsets.only(
                                          top: 61.0,
                                          left: 90,
                                          right: 90,
                                          bottom: 45),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/icon-succes-transaction.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Your order has been successfull",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    const Text(
                                        "we will contact the seller so that it can be sent immediately to the destination",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            color: Color(0xff516971),
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(
                                      height: 35.0,
                                    ),
                                    SizedBox(
                                      width: 280,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffFFB039),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                50), // <-- Radius
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomeScreen(),
                                            ),
                                          );
                                        },
                                        child: const Text("ok"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                child: (isLoading != false)
                    ? const CircularProgressIndicator()
                    : const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
