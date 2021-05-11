import 'package:extrainningsapp/HelperFunction/databaseHelper.dart';
import 'package:extrainningsapp/view/SelectPlayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String grpval = "Visitor Team";
  String grpval2 = "Bowl";
  TextEditingController hostTeamName = TextEditingController();
  TextEditingController visitorTeam = TextEditingController();
  TextEditingController overs = TextEditingController();
  final _key = GlobalKey<FormState>();

  submit() async {
    if (_key.currentState.validate()) {
      DatabaseHelper.instance.insert({
        DatabaseHelper.columName1: hostTeamName.text,
        DatabaseHelper.columName2: visitorTeam.text,
        DatabaseHelper.columName3: grpval,
        DatabaseHelper.columName4: grpval2,
        DatabaseHelper.columName5: overs.text
      }).then((value) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return SelectPlayers(id: value);
        }));
      });
      List<Map<String, dynamic>> queryRows =
          await DatabaseHelper.instance.queryAll();
      print(queryRows);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: _key,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Teams",
                    style: GoogleFonts.ubuntu(fontSize: 20),
                  ),
                ),
                Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          controller: hostTeamName,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Host team cannot be empty";
                            }
                          },
                          decoration: InputDecoration(
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              errorStyle: GoogleFonts.ubuntu(
                                  letterSpacing: 2, fontSize: 13),
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Host Team",
                              focusColor: Colors.white,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          controller: visitorTeam,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Visitor team cannot be empty";
                            }
                          },
                          decoration: InputDecoration(
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              errorStyle: GoogleFonts.ubuntu(
                                  letterSpacing: 2, fontSize: 13),
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Visitor Team",
                              focusColor: Colors.white,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Toss won By",
                    style: GoogleFonts.ubuntu(fontSize: 20),
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Radio(
                            activeColor: Color(0xFF6200EE),
                            value: "Host Team",
                            groupValue: grpval,
                            onChanged: (v) {
                              {
                                setState(() {
                                  grpval = v;
                                });
                                print(v);
                              }
                            }),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13),
                        child: Text("Host Team"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Radio(
                            activeColor: Color(0xFF6200EE),
                            value: "Visitor Team",
                            groupValue: grpval,
                            onChanged: (v) {
                              {
                                setState(() {
                                  grpval = v;
                                });
                                print(v);
                              }
                            }),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13),
                        child: Text("Visitor Team"),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Opted To",
                    style: GoogleFonts.ubuntu(fontSize: 20),
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Radio(
                            activeColor: Color(0xFF6200EE),
                            value: "Bat",
                            groupValue: grpval2,
                            onChanged: (v) {
                              {
                                setState(() {
                                  grpval2 = v;
                                });
                                print(v);
                              }
                            }),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13),
                        child: Text("Batting"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Radio(
                            activeColor: Color(0xFF6200EE),
                            value: "Bowl",
                            groupValue: grpval2,
                            onChanged: (v) {
                              {
                                setState(() {
                                  grpval2 = v;
                                });
                                print(v);
                              }
                            }),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13),
                        child: Text("Bowling"),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Overs",
                    style: GoogleFonts.ubuntu(fontSize: 20),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      controller: overs,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Overs Cannot be empty";
                        }
                      },
                      decoration: InputDecoration(
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          errorStyle: GoogleFonts.ubuntu(
                              letterSpacing: 2, fontSize: 13),
                          // disabledBorder: InputBorder.none,
                          // enabledBorder: InputBorder.none,
                          hintText: "16",
                          focusColor: Colors.white,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Advance Settings",
                          style: GoogleFonts.ubuntu(fontSize: 20),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return SelectPlayers();
                        // }));
                        // int i = await DatabaseHelper.instance
                        //     .insert({"name": "Nithin"});
                        // print(i);
                        // List<Map<String, dynamic>> queryRows =
                        //     await DatabaseHelper.instance.queryAll();
                        // print(queryRows);
                        submit();
                      },
                      child: Card(
                        color: Colors.amberAccent,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Start Match",
                            style: GoogleFonts.ubuntu(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
