import 'package:extrainningsapp/view/ScorePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPlayers extends StatefulWidget {
  final int id;
  SelectPlayers({Key key, this.id}) : super(key: key);

  @override
  _SelectPlayersState createState() => _SelectPlayersState();
}

class _SelectPlayersState extends State<SelectPlayers> {
  TextEditingController striker = TextEditingController();
  TextEditingController nonStriker = TextEditingController();
  TextEditingController bowler = TextEditingController();
  final _key = GlobalKey<FormState>();

  submit() async {
    if (_key.currentState.validate()) {
      // DatabaseHelper.instance.insertPlayersName({
      //   PlayerName.columTeamId: widget.id,
      //   PlayerName.columName1: striker.text,
      //   PlayerName.columName2: nonStriker.text,
      //   PlayerName.columName3: bowler.text,
      // }).then((value) {
      //   print(value);
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //     return ScoreBoardPage(
      //       id: value,
      //     );
      //   }));
      // });
      // List<Map<String, dynamic>> queryRows =
      //     await DatabaseHelper.instance.queryAllPalyersName();
      // print(queryRows);
    }
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
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
                    child: Text("Striker",
                        style:
                            GoogleFonts.ubuntu(fontSize: 20, letterSpacing: 2)),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        controller: striker,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Striker Batsman cannot be empty";
                          }
                        },
                        decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            errorStyle: GoogleFonts.ubuntu(
                                letterSpacing: 2, fontSize: 13),
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Striker",
                            focusColor: Colors.white,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text("Non-Striker",
                        style:
                            GoogleFonts.ubuntu(fontSize: 20, letterSpacing: 2)),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        controller: nonStriker,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Non Striker Batsman cannot be empty";
                          }
                        },
                        decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            errorStyle: GoogleFonts.ubuntu(
                                letterSpacing: 2, fontSize: 13),
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Non-Striker",
                            focusColor: Colors.white,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text("Bowler",
                        style:
                            GoogleFonts.ubuntu(fontSize: 20, letterSpacing: 2)),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        controller: bowler,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Bowler cannot be empty";
                          }
                        },
                        decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            errorStyle: GoogleFonts.ubuntu(
                                letterSpacing: 2, fontSize: 13),
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Bowler",
                            focusColor: Colors.white,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ScoreBoardPage();
                        }));
                        submit();
                      },
                      child: Card(
                        color: Colors.amberAccent,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Start Match",
                              style: GoogleFonts.ubuntu(
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    ));
  }
}
