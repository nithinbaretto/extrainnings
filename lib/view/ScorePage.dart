import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreBoardPage extends StatefulWidget {
  final int id;
  ScoreBoardPage({Key key, this.id}) : super(key: key);

  @override
  _ScoreBoardPageState createState() => _ScoreBoardPageState();
}

class _ScoreBoardPageState extends State<ScoreBoardPage> {
  bool checkBox = false;
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Extra",
                        style: GoogleFonts.ubuntu(
                            fontSize: 30, color: Colors.blueAccent),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Innings",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black87,
                      ),
                      onPressed: null)
                ],
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
                color: Colors.black87,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Royal Challengers",
                      style: GoogleFonts.ubuntu(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "1st innings",
                      style: GoogleFonts.ubuntu(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("37-0", style: GoogleFonts.ubuntu(fontSize: 30)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("(0.1)", style: GoogleFonts.ubuntu(fontSize: 20)),
                      ],
                    ),
                    Text("37.0" + "(CRR)", style: GoogleFonts.ubuntu())
                  ],
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Batsman", style: GoogleFonts.ubuntu()),
                          Text("R", style: GoogleFonts.ubuntu()),
                          Text("B", style: GoogleFonts.ubuntu()),
                          Text("4s", style: GoogleFonts.ubuntu()),
                          Text("6s", style: GoogleFonts.ubuntu()),
                          Text("SR", style: GoogleFonts.ubuntu())
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 45,
                                  child: Text("Nithin",
                                      style: GoogleFonts.ubuntu())),
                            ],
                          ),
                          Text("40", style: GoogleFonts.ubuntu()),
                          Text("15", style: GoogleFonts.ubuntu()),
                          Text("5", style: GoogleFonts.ubuntu()),
                          Text("6", style: GoogleFonts.ubuntu()),
                          Text("10", style: GoogleFonts.ubuntu())
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 45,
                                  child: Text("Anil",
                                      style: GoogleFonts.ubuntu())),
                            ],
                          ),
                          Text("40", style: GoogleFonts.ubuntu()),
                          Text("15", style: GoogleFonts.ubuntu()),
                          Text("5", style: GoogleFonts.ubuntu()),
                          Text("6", style: GoogleFonts.ubuntu()),
                          Text("10", style: GoogleFonts.ubuntu())
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Bowler", style: GoogleFonts.ubuntu()),
                          Text("O", style: GoogleFonts.ubuntu()),
                          Text("M", style: GoogleFonts.ubuntu()),
                          Text("R", style: GoogleFonts.ubuntu()),
                          Text("W", style: GoogleFonts.ubuntu()),
                          Text("ER", style: GoogleFonts.ubuntu())
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 45,
                                  child: Text("Nithin",
                                      style: GoogleFonts.ubuntu())),
                            ],
                          ),
                          Text("4", style: GoogleFonts.ubuntu()),
                          Text("1", style: GoogleFonts.ubuntu()),
                          Text("10", style: GoogleFonts.ubuntu()),
                          Text("2", style: GoogleFonts.ubuntu()),
                          Text("10", style: GoogleFonts.ubuntu())
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 55,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return index != 0
                          ? Container(
                              margin: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10),
                              // height: 20,
                              width: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red[500]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(child: Text("0")))
                          : Center(
                              child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "This over :",
                                style: GoogleFonts.ubuntu(),
                              ),
                            ));
                    },
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: checkBox,
                            onChanged: (val) {
                              print(val);
                              setState(() {
                                checkBox = val;
                              });
                            }),
                        Text("Wide"),
                        Checkbox(
                            value: checkBox,
                            onChanged: (val) {
                              print(val);
                              setState(() {
                                checkBox = val;
                              });
                            }),
                        Text("NB"),
                        Checkbox(
                            value: checkBox,
                            onChanged: (val) {
                              print(val);
                              setState(() {
                                checkBox = val;
                              });
                            }),
                        Text("Byes"),
                        Checkbox(
                            value: checkBox,
                            onChanged: (val) {
                              print(val);
                              setState(() {
                                checkBox = val;
                              });
                            }),
                        Text("LegByes")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: checkBox,
                                onChanged: (val) {
                                  print(val);
                                  setState(() {
                                    checkBox = val;
                                  });
                                }),
                            Text("Wicket"),
                          ],
                        ),
                        Card(
                          color: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                              height: 30,
                              width: 70,
                              child: Center(
                                  child: Text(
                                "Retire",
                                style: GoogleFonts.ubuntu(fontSize: 16),
                              ))),
                        ),
                        Card(
                          color: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                              height: 30,
                              width: 130,
                              child: Center(
                                  child: Text(
                                "Swap Batsman",
                                style: GoogleFonts.ubuntu(fontSize: 16),
                              ))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Card(
                              color: Colors.amberAccent,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Text(
                                    "Undo",
                                    style: GoogleFonts.ubuntu(),
                                  )),
                            )),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          child: Card(
                            color: Colors.amberAccent,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Text("Patnership",
                                    style: GoogleFonts.ubuntu())),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          child: Card(
                            color: Colors.amberAccent,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text("Extras",
                                    style: GoogleFonts.ubuntu())),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            scoreBoard("0"),
                            scoreBoard("1"),
                            scoreBoard("2"),
                            scoreBoard("3"),
                          ],
                        ),
                        Row(
                          children: [
                            scoreBoard("4"),
                            scoreBoard("5"),
                            scoreBoard("6"),
                            scoreBoard("..."),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ))),
    ));
  }

  Widget scoreBoard(String score) {
    return Container(
        margin: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 5),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red[500]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(child: Text(score)));
  }
}
