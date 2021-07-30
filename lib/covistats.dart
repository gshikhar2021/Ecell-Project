import 'package:flutter/material.dart';

class CoviStats extends StatefulWidget {
  const CoviStats({Key? key}) : super(key: key);

  @override
  _CoviStatsState createState() => _CoviStatsState();
}

class _CoviStatsState extends State<CoviStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.lightBlueAccent[100],
                    child: Image.asset(
                      'images/profile.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 280,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    padding: EdgeInsets.all(60),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/qr.jpg'), fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Image.asset('images/Rectangle.jpg'),
                    // Image.asset('images/wave.jpg'),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "That's it🙂🙂🙂",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                heightFactor: 5,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 200, height: 60),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Go Back",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
