import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 120,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamAPoints++;
                            });
                            print(teamAPoints);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamAPoints = teamAPoints +2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamAPoints = teamAPoints +3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ), //virtical devider
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 120,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamBPoints ++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamBPoints = teamBPoints +2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: ()
                          {
                            setState(() {
                              teamBPoints = teamBPoints +3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50)
                ),
                onPressed: ()
                {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )
            ),
          ],
        ),

      ),

    );
  }
}
