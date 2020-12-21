import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Josh';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Likes coding and making music';
    });
    print('$username - $bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Init State run');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('Build State run');
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter - $counter'),
      ),
    );
  }
}
