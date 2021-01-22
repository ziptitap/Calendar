import 'package:flutter/material.dart';
import 'calendar.dart';
import 'day_details_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String strDate = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Календарь Событий"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(strDate),
              Container(
                margin: EdgeInsets.all(15),
              child: RaisedButton(
                  onPressed: () async {
                    strDate = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalendarChoose(
                                  Calendar.BIRTHDAY,
                                  currentDateFontColor: Colors.black,
                                  currentDateBackgroundColor: Colors.redAccent,
                                  selectionBackgroundColor: Colors.deepPurple[200],
                                  selectionFontColor: Colors.white,
                                )));
                    if (strDate == null) strDate = "";
                  },
                  child: Text("День Рождения",style: TextStyle(fontSize: 20)),
                  color: Colors.deepPurple[100],
                  padding: EdgeInsets.only(left:56, right:56, top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11.0))
                  ),
              ),
              ),
              Container(
                margin: EdgeInsets.all(10),
              child: RaisedButton(
                  onPressed: () async {
                    strDate = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalendarChoose(
                                Calendar.EVENT,
                              currentDateFontColor: Colors.blue[100],
                              currentDateBackgroundColor: Colors.redAccent,
                              selectionBackgroundColor: Colors.deepPurple[200],
                              selectionFontColor: Colors.white,
                            )));
                    if (strDate == null) strDate = "";
                  },
                  child: Text("Событие", style: TextStyle(fontSize: 20)),
                  color: Colors.deepPurple[100],
                  padding: EdgeInsets.only(left:89, right:89, top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11.0))
                ),
              )),
              Container(
                margin: EdgeInsets.all(10),
              child: RaisedButton(
                  onPressed: () async {
                    strDate = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalendarChoose.range()));
                    if (strDate == null) strDate = "";
                  },
                  child: Text("Бронирование (период)", style: TextStyle(fontSize: 20)),
                  color: Colors.deepPurple[100],
                padding: EdgeInsets.only(left:19, right:19, top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11.0))
                ),
              )),

              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () async {
                    strDate = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CalendarChoose(
                                    Calendar.FUTUREYEARS,
                                  currentDateFontColor: Colors.blue[100],
                                  currentDateBackgroundColor: Colors.redAccent,
                                  selectionBackgroundColor: Colors.deepPurple[200],
                                  selectionFontColor: Colors.white,
                                )));
                    if (strDate == null) strDate = "";
                  },
                  child: Text("Календарь", style: TextStyle(fontSize: 20)),
                  color: Colors.deepPurple[100],
                  padding: EdgeInsets.only(left:80, right:80, top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11.0))
                  ),
                )),
            ],
          ),
        ),
      ),
    );
  }
}
