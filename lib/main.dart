import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinLoginPage(),
    );
  }
}

class PinLoginPage extends StatefulWidget {
  @override
  _PinLoginPageState createState() => _PinLoginPageState();
}

class _PinLoginPageState extends State<PinLoginPage> {
  String pin = "";

  void _updatePin(String value) {
    if (pin.length < 6) {
      setState(() {
        pin += value;
      });
    }
  }

  void _deletePin() {
    if (pin.isNotEmpty) {
      setState(() {
        pin = pin.substring(0, pin.length - 1);
      });
    }
  }

  void _resetPin() {
    setState(() {
      pin = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pin Login",
          textAlign: TextAlign.center,
        ),
        centerTitle: true, // Center the title within the AppBar
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 6; i++)
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                      child: Center(
                        child: Text(
                          i < pin.length ? pin[i] : '',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i <= 3; i++)
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () => _updatePin(i.toString()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i.toString(),
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            if (i == 1)
                              Text("one",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 2)
                              Text("two",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 3)
                              Text("three",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 4; i <= 6; i++)
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () => _updatePin(i.toString()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i.toString(),
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            if (i == 4)
                              Text("four",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 5)
                              Text("five",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 6)
                              Text("six",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 7; i <= 9; i++)
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () => _updatePin(i.toString()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i.toString(),
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            if (i == 7)
                              Text("seven",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 8)
                              Text("eight",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                            if (i == 9)
                              Text("nine",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () => _resetPin(),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Icon(Icons.refresh, size: 20),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () => _updatePin("0"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text("zero",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () => _deletePin(),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child:
                          Icon(Icons.backspace, size: 20), // เปลี่ยนเป็นไอคอนลบ
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
