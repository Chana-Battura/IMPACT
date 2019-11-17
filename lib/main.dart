import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:flutter_rave/flutter_rave.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Trial',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

/**List getProtests() {
  return [
    Protest(
        title: "Climate Change Rally (Washington D.C.)",
        date: "Beginner",
        content:
            "The rally will still go on but Due to unforeseen circumstances I will not be able to attend the rally but still, I encourage you to go. Kids everywhere like Greta Thunberg and other climate change activists caused an outbreak of protests and marches across the globe. That’s what this is about present generations protecting the world for future generations before it is ruined. Some only teenagers. Speaking of I am only 14 so I did not get a permit for the rally."),
    Protest(
        title: "Climate Strike NYC",
        date: "September 20, 2019",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Protest(
        title: "Reverse parallel Parking",
        date: "Intermidiate",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Protest(
        title: "Reversing around the corner",
        date: "Intermidiate",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Protest(
        title: "Incorrect Use of Signal",
        date: "Advanced",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Protest(
        title: "Engine Challenges",
        date: "Advanced",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Protest(
        title: "Self Driving Car",
        date: "Advanced",
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}


**/
List words() {
  return [
    [
      "Climate Change Rally (Washington D.C.)",
      "2019-03-20 00:00:00.000",
      "The rally will still go on but Due to unforeseen circumstances I will not be able to attend the rally but still, I encourage you to go. Kids everywhere like Greta Thunberg and other climate change activists caused an outbreak of protests and marches across the globe. That’s what this is about present generations protecting the world for future generations before it is ruined. Some only teenagers. Speaking of I am only 14 so I did not get a permit for the rally.  Would you like to help fund this event?"
    ],
    [
      "Climate Strike NYC",
      "2019-09-20 00:00:00.000",
      "On September 20, three days before the UN Climate Summit in NYC, young people and adults will strike globally, to demand transformative action be taken to address the climate crisis. In NYC, students will walk out of their classrooms and adults will walk out of their workplaces and meet for a rally in Foley Square and then march through the Financial District to Battery Park where there will be another Rally.There will inspiring speakers, youth leaders and an appearance by Greta Thunberg.Join with other people of faith to support young people around the world, and across New York City, as they bring this call to national and global attention.  Would you like to help fund this event?"
    ],
    [
      "Women’s March San Francisco",
      "2020-01-18 00:00:00.000",
      "Women's March San Francisco is a grassroots organization run by 100% volunteers only, we are self-created, self-managed, and self-funded; we do not receive any funding from Women’s March DC Chapter (a.k.a National or Inc) or Women’s March LA Chapter (a.k.a Foundation) and we rely solely on donations from our community.  Would you like to help fund this event?"
    ],
    [
      "Protest Trump (San Francisco)",
      "2019-11-20 00:00:00.000",
      "Help Save America - Protest Trump Saturdays “Any Democracy is only as good as it’s citizens' willingness to Defend it.If we do not Defend our Democracy today;we may not have one tomorrow.And if we do not Defend our Democracy,Who will? Protest Trump for the Good of our Country, our Democracy, our Environment, and our Future. Come Out to the SF Ferry Building Every Saturday, bet 11 & 1 pm, & Protest Trump. ~30,000 people see my signs every Saturday. ~615,000 people have seen my signs since June 15th. This is more impactful than going door to door or doing phone bankings  Would you like to help fund this event?"
    ],
    [
      "Trans Liberation Rally (San Jose)",
      "2019-11-22 00:00:00.000",
      "Honor our dead, and fight like hell for the living. In honor of Trans Awareness Month, we come together in solidarity against the attacks on transgender and non-binary lives. The most basic form of LGBTQ+ activism is living as your authentic self in a world where homophobia, transphobia, and biphobia still exist. Being seen and visible is a revolutionary act, and we want you to know one thing… We see you. Because we see you, you exist, and we will fight like hell for you. Join us on November 22nd at 6:30 pm outside Billy DeFrank LGBTQ+ Center, San Jose for the Trans Liberation Rally. Leaders in the LGBTQ+ community will speak on gender identity and expression, using storytelling to bring empathy and understanding to trans and non-binary communities most vulnerable to social, political, mental, and physical abuse. We encourage you to create signs, wave flags and share your voice. We encourage our allies to show up, listen to trans stories, and get involved. The transgender and non-binary community needs you. This is your call to action.  Would you like to help fund this event?"
    ],
    [
      "International Women’s Day (Santa Rosa)",
      "2020-03-08 00:00:00.000",
      "Santa Rosa Rosie Rally 2020 is celebrating International Women's Day on Sunday, March 8th. Bring your 'We Can Do It' Spirit, dress up as Rosie the Riveter ... all are welcome at this free community event - bring the whole family! Music, food, fun and more.  Would you like to help fund this event?"
    ],
    [
      "CCC Education Funding Awareness Week",
      "2019-11-21 00:00:00.000",
      "The Contra Costa County School Boards Association invites trustees, superintendents, labor leaders, and parents from each school district in the county to form a county-level education coalition focused on raising awareness in our communities and throughout the county about the need to increase school funding. Would you like to help found this event"
    ],
    [
      "Global Strike For Climate December 2019",
      "2019-12-1 00:00:00.000",
      "We, the people of this planet, will not stand idly by while our global leaders fail to act on climate change for another year. The greatest minds of today have warned you, our governments, of the risks and devastation wrought by an unstable environment. Yet we see continued commitment to fossil fuel extraction; fracking, tar sands, drilling in the arctic. In the name of economic growth and a strong GDP we see you fail to drive change. We see you cower under a political system that prioritises today and not tomorrow."
    ],
    [
      "OCGC Online Membership Drive",
      "2019-09-03 00:00:00.000",
      "One Community Grocery Co-op is a developing retail cooperative business that is owned by it’s members. This means that it is owned by members of the community – not outside investors. Each member-owner has a say in decisions that affect the co-op. Instead of paying outside investors, members decide how the store is run and how profits will be used. Generally, profits are reinvested in the community and it’s members. Typically, grocery co-ops tend to source products from more local farmers and producers, donate proportionally more dollars to charity, have better worker wages and benefits, and give back more to the local economy than traditional grocery stores and One Community Grocery Co-op intends to do the same. One Community Grocery Co-op is not just building a grocery store; we are developing a thriving economy!"
    ],
    [
      "2020 Annual New Jersey Land Conservation Rally",
      "2020-03-20 00:00:00.000",
      "The New Jersey Land Conservation Rally is a one-day educational conference about conserving New Jersey's open space and farmland. The event consists of training workshops and roundtable discussions, typically 75 minutes long. Would you like to help fund this event?"
    ],
    [
      "Trans Day of Visibility Pride March and Rally NYC",
      "2020-03-31 00:00:00.000",
      "If you are in NYC on The Trans Day of Visibility we will be hosting The First Transgender/Non-Binary/Gender Fluid Day of Visibility Pride.  Would you like to help fund this event?"
    ],
    [
      "Action4Education",
      "2019-11-20 00:00:00.000",
      "As you may, or may not, be aware, the faculty at NJCU have been working without a contract since July 2019. In response, AFT Local 1839 and all of the other locals that make up the Council of NJ State College Locals (CNJSCL) will be having a DAY OF ACTION on Wednesday, November 20th. Our own demonstration will be happening from 2pm-4pm on that day in front of the Science Building & the GSUB. There will be speakers, pizza, beverages, music, and above all – Solidarity. We want to show the State that we are a strong and united Union. We would very much like for all of you to attend this Day of Action. Bring your fellow students, colleagues, families, and friends. We will be having a planning meeting for this event on Monday, November 11th at 2pm in the Local Office (Grossnickle Hall Room 421). We are inviting any of you who wish to attend to come and help us plan a successful event. We are stronger together."
    ]
  ];
}

showAlertDialog(BuildContext context, int number) {
  // set up the buttons

  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  runGoogleMap() {
    Event event = Event(
      title: words()[number][0],
      description: words()[number][2],
      location: 'Flutter app',
      startDate: DateTime.parse(words()[number][1]),
      endDate: DateTime.parse(words()[number][1]).add(Duration(days: 1)),
      allDay: true,
    );
    Add2Calendar.addEvent2Cal(event).then((success) {
      scaffoldState.currentState
          .showSnackBar(SnackBar(content: Text(success ? 'Success' : 'Error')));
    });
  }
  Widget cancelButton = FlatButton(
    child: Text("Definitely!"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Transaction()),
      );
    },
  );
  Widget continueButton = FlatButton(
    child: Text("I'll Pass..."),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop('dialog');
    },
  );

  Widget launchButton = FlatButton(
    child: Text("Add Event"),
    onPressed: () {
      runGoogleMap();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(words()[number][0]),
    content: Text(words()[number][2]),
    actions: [cancelButton, continueButton, launchButton],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Impact',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.account_circle,
                  color: Color(0xFF2196F3), size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            title: GradientText('IMPACT',
                shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                gradient: Gradients.rainbowBlue,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'rock salt',
                    fontSize: 45.0,
                    color: Color(0xFF0196F4))),
          ),
          body: Container(
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Colors.black,
                  Colors.black87,
                  Colors.black87,
                  Colors.black,
                ],
              ),
            ),
            child: ListView(
              primary: false,
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                Container(height: 25),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 0);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[0][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 1);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[1][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 2);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[2][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 3);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[3][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 4);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[4][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 5);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[5][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 6);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[6][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 7);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[7][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 8);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[8][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 9);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[9][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 10);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[10][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
                Container(height: 50),
                new GestureDetector(
                    onTap: () {
                      showAlertDialog(context, 11);
                    },
                    child: new Container(
                        padding: const EdgeInsets.all(10),
                        height: 490,
                        child: Text(
                          words()[11][0],
                          style: TextStyle(
                              fontFamily: 'rock salt',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              fontSize: 45,
                              color: Colors.white),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0),
                                Color((math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt() <<
                                        0)
                                    .withOpacity(1.0)
                              ]),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
                        ))),
              ],
            ),
          )),
    );
  }
}
/** 
class Foundation_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),backgroundColor: Colors.transparent, elevation: 0.0,
      ),
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(77,166,255, -10),
                  Color.fromRGBO(77,166,255, 10)
                ]),
                image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              'https://i.imgur.com/7pRV8kq.jpg',
                            ),
                          ),
          ),
        ),
        //child: RaisedButton(

        //child: Text('Donate for this Event!'),
      ),
    );
  }
}*/
/** 
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Foundation_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF2196F3)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Profile"),
      ),
    );
  }
}*/

class Transaction extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.lightBlue,
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
      title: 'Flutterwave',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Transaction'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.lightBlue),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.lightBlue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: InkWell(
                onTap: () => _pay(context),
                child: GradientCard(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  gradient: Gradients.tameer,
                  elevation: 15,
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Card Payment",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.payment,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _pay(BuildContext context) {
    final snackBar_onFailure = SnackBar(content: Text('Transaction failed'));
    final snackBar_onClosed = SnackBar(content: Text('Transaction closed'));
    final _rave = RaveCardPayment(
      isDemo: true,
      encKey: "c53e399709de57d42e2e36ca",
      publicKey: "FLWPUBK-d97d92534644f21f8c50802f0ff44e02-X",
      transactionRef: "hvHPvKYaRuJLlJWSPWGGKUyaAfWeZKnm",
      amount: 100,
      email: "demo1@example.com",
      onSuccess: (response) {
        print("$response");
        print("Transaction Successful");
        if (mounted) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Transaction Sucessful!"),
              backgroundColor: Colors.green,
              duration: Duration(
                seconds: 5,
              ),
            ),
          );
        }
      },
      onFailure: (err) {
        print("$err");
        print("Transaction failed");
        Scaffold.of(context).showSnackBar(snackBar_onFailure);
      },
      onClosed: () {
        print("Transaction closed");
        Scaffold.of(context).showSnackBar(snackBar_onClosed);
      },
      context: context,
    );
    _rave.process();
  }
}

/** 
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var localAuth = new LocalAuthentication();
//bool didAuthenticate = await localAuth.authenticateWithBiometrics(localizedReason: 'Please authenticate to show account balance');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF2196F3)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Profile"),
      ),
      body: RichText(
        text: TextSpan(
          text: 'Charan Battula ',
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),
    );
  }
}
*/
class Profile extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'rock salt', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: new TextStyle(color: Colors.lightBlue),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 0.0),
          ),
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: new TextStyle(color: Colors.lightBlue),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 0.0),
          ),
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 164.0,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20.0),
                emailField,
                SizedBox(height: 20.0),
                passwordField,
                SizedBox(
                  height: 10.0,
                ),
                loginButon,
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
