import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/pages/itemlist.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home.png"),
                      fit: BoxFit.fitHeight),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 12),
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 390),
                child: Container(
                  height: 1750,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  child: Column(
                    children: <Widget>[
                      buildDragHandle(),
                      ListTile(
                        title: Text(
                          "Orchid Villa , Kandy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text("10th Lane Kuddasle"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: RatingBar.builder(
                            itemSize: 30,
                            itemBuilder: (context, _) {
                              return Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 200, top: 10),
                        child: ElevatedButton.icon(
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(FontAwesomeIcons.hippo),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 99, 42, 196),
                              minimumSize: Size(150, 10)),
                          label: Text("HIPPO OFFER-15%"),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 0.6,
                        color: Colors.grey,
                      ),
                      ListTile(
                        leading: Icon(Icons.map),
                        title: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: Text(
                              "Show on Map",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 0.6,
                        color: Colors.grey,
                      ),
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Overview",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        subtitle: Text(
                            "Steigt schwebet nun beifall strenge es manche hinweggeschwunden bang, nach erfreuet einer zerstoben schwebet bang getäuscht, tränen träne sehnen schatten ersten geneigt vom und hinweggeschwunden jenem. Labyrinthisch die tönen diesmal nennt und vor gleich. Noch ach sehnen widerklang vom gedränge sich macht. Wenn das die trüben und lieb der ach und ihr, gestalten in wirklichkeiten der seh herauf lied und. Dem neu lispelnd der früh, trüben tränen geisterreich jenem der. Es faßt versuch manche naht wird manche erfreuet lebt, ihr und welt freundschaft naht ich, und an weiten widerklang äolsharfe, neu wahn sonst manche ich den halbverklungnen ihr, fühlt einer nebel mit noch lieb festzuhalten ihr ihr. Sich im stillen klage wird schatten vom um fühlt, wie folgt meinem wirklichkeiten."),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ItemList(),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 160),
                            child: Text("What this place offers",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.kitchenSet,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Kitchen",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 26),
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.kitchenSet,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text("Kitchen",
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.wifi,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("wifi",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.wifi,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Wifi",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      // ignore: deprecated_member_use
                                      Icon(
                                        // ignore: deprecated_member_use
                                        FontAwesomeIcons.television,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Television",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      // ignore: deprecated_member_use
                                      Icon(
                                        // ignore: deprecated_member_use
                                        FontAwesomeIcons.television,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Television",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 95, left: 25),
                            child: Row(
                              children: [
                                Text("Reviews",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text("(177 verified guest reviews)"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 23),
                                    child: Row(
                                      children: [
                                        Text(
                                          "9.5",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 50),
                                        ),
                                        Text(
                                          "/10",
                                          style: TextStyle(fontSize: 25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text("Outstanding")
                                ],
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/groupimg.png"))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Location",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Value for money",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Cleaniness",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Staff",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Facilities",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Location",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Location",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Location",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text("8.5",
                                          style: TextStyle(
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 0.5,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade200,
                                    animation: true,
                                    animationDuration: 1000,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Read all reviews",
                              style:
                                  TextStyle(color: Colors.deepPurple.shade700),
                            ),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(140, 60),
                                primary: Colors.deepPurple.shade200),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            thickness: 0.6,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(400, 60),
                                    primary: Colors.deepPurple),
                                onPressed: () {},
                                child: Text("Select Rooms")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }

  Widget buildDragHandle() => Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 6,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      );
}
