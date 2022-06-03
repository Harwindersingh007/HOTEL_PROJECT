import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Row(
          children: [
            BuildCard(),
            SizedBox(
              width: 10,
            ),
            BuildCard2(),
            SizedBox(
              width: 10,
            ),
            BuildCard3(),
          ],
        ),
      ),
    );
  }

  Widget BuildCard() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              image: DecorationImage(
                  alignment: Alignment(0, -2.7),
                  image: AssetImage("assets/images/BBQ.png"),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white),
          height: 250,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180, left: 20),
                child: Text(
                  "get the experience of BBQ party night",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 115),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("BBQ Night"),
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, minimumSize: Size(70, 50)),
          ),
        )
      ],
    );
  }

  Widget BuildCard2() {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 350,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment(0, -8.4),
                  image: AssetImage("assets/images/Arcadenight.png"),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180, left: 30),
                child: Text(
                  "enjoy the retro themed arcade \nand take yourself back to the 80's",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 115),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Arcade Night"),
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, minimumSize: Size(70, 50)),
          ),
        )
      ],
    );
  }

  Widget BuildCard3() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment(0, 33),
                  image: AssetImage("assets/images/buffetnight.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ]),
          height: 250,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180, left: 18),
                child: Text(
                  "80% off the sea food dishes",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 115),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Buffet Night"),
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, minimumSize: Size(70, 50)),
          ),
        )
      ],
    );
  }
}
