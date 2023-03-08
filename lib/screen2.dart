import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _State();
}

class _State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff031f2b),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: const [
              SizedBox(width: 20),
              Text(
                "Sayohat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
                color: Color(0xff263238),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Buxoro",
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Categories("Barchasi", true),
                  SizedBox(width: 5),
                  Categories("Tog'", false),
                  SizedBox(width: 5),
                  Categories("Dacha", false),
                  SizedBox(width: 5),
                  Categories("Barchasi", true),
                  SizedBox(width: 5),
                  Categories("Tog'", false),
                  SizedBox(width: 5),
                  Categories("Dacha", false),
                  SizedBox(width: 5),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Flexible(
              flex: 1,
              child: ListView(
                children: [
                  Row(children: const [
                    SizedBox(width: 20),
                    Text(
                      "Mashur joylar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                  Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Popular("Orol", "region", "assets/images/pop1.png"),
                          Popular("Jizzax", "region", "assets/images/pop2.png"),
                          Popular(
                              "Toshkent", "region", "assets/images/pop3.png")
                        ],
                      )),
                  Row(children: const [
                    SizedBox(width: 20),
                    Text(
                      "Mashur joylar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                  All("Samarqand", "region", "assets/images/all.png"),
                  All("Samarqand", "region", "assets/images/all1.png")
                ],
              ))
        ],
      ),
    ));
  }

  Widget All(String capital, String region, String image) {
    return Container(
      padding: EdgeInsets.all(20),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(children: [
              Stack(children: [
                Image(
                    width: double.infinity,
                    alignment: FractionalOffset.topCenter,
                    fit: BoxFit.fill,
                    image: AssetImage(image)),
                Column(
                  children: [
                    SizedBox(height: 100,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          capital,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          capital,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ])
            ])));
  }

  Widget Popular(String capital, String region, String image) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image(
                    alignment: FractionalOffset.topCenter,
                    fit: BoxFit.fill,
                    width: 150,
                    height: 400,
                    image: AssetImage(image)),
                Column(
                  children: [
                    Flexible(flex: 1, child: Column()),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          capital,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          region,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )));
  }

  Widget Categories(String text, bool isSelected) {
    Color selectedColor = const Color(0xff263238);
    if (isSelected) {
      selectedColor = const Color(0xff3890bd);
    }
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: (Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
