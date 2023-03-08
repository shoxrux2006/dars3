import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff031f2b)),
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Color(0xff031f2b),
                  snap: false,
                  pinned: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text("Jizzax"),
                    background: ClipRRect(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        child: Stack(children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  const Image(
                                    image: AssetImage(
                                      "assets/images/zomin.png",
                                    ),
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                  Column(
                                    children: [
                                      Flexible(flex: 1, child: Column()),
                                      const Text(
                                        "Zomin",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ]),
                      ),
                    ),
                  ),
                  expandedHeight: 360,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    tooltip: "Back",
                    onPressed: () {},
                  ),
                )
              ];
            },
            body: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(width: 20),
                        Text(
                          "Batafsil",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Zomin tumani — Jizzax viloyatidagi tuman. 1926-yil 29-sentabrda tashkil etilgan (1962-yil 24-dekabrda Jizzax tumani bilan birlashtirilgan, 1964-yil 31-dekabrda qayta tuzilgan. Shimolda viloyatning Zarbdor tumani, gʻarbda ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 180,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Color(0xff031f2b),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue)),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 10),
                                  child: Icon(Icons.map_outlined,
                                      color: Colors.blue),
                                ),
                                Center(
                                  child: Text(
                                    "Joylashuv",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 22),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Color(0xff031f2b),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue)),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 10),
                                  child: Icon(Icons.map_outlined,
                                      color: Colors.blue),
                                ),
                                Center(
                                  child: Text(
                                    "Joylashuv",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ))),
      ),
    ));
  }
}
