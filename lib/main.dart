// ignore_for_file: avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_back/screens/home.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatefulWidget{
  const TokuApp({super.key});
  
  @override
  State<TokuApp> createState() => _TokuAppState();

}
class _TokuAppState extends State<TokuApp>{

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}




/*class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _BasketballCounter();

}

class _BasketballCounter extends State<CounterApp>{
  int teamApoint = 0;
  int teamBpoint = 0;
  void addOnepoint(){

  }
  void addTwopoint(){
    
  }
  void addThreepoint(){
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Points counter'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(  
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$teamApoint',
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                        teamApoint++;
                        });
                      }, 
                      child: const Text(
                        "Add 1 point",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.0,
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                        teamApoint += 2;
                        });
                      }, 
                      child: const Text(
                        "Add 2 points",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.0,
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                        teamApoint += 3;
                        });
                      }, 
                      child: const Text(
                        "Add 3 points",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    width: 15,
                    color: Color.fromARGB(255, 199, 199, 199),
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$teamBpoint',
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoint += 1;
                        });
                      }, 
                      child: const Text(
                        "Add 1 point",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.0,
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoint += 2;
                        });
                      }, 
                      child: const Text(
                        "Add 2 points",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.0,
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        elevation: 5,
                        fixedSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoint += 3;
                        });
                      }, 
                      child: const Text(
                        "Add 3 points",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      elevation: 5,
                      fixedSize: const Size(160, 57),
                    ),
                    onPressed: (){
                      teamApoint = 0;
                      teamBpoint = 0;
                      setState(() {
                        
                      });
                    }, 
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
            ),

          ],
        ),
      ),
    );
  }

}*/



/*class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 167, 128, 168),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                radius: 96,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    height: 185,
                    width: 185,
                    image: AssetImage("images/birth.png"),
                  ),
                ),
              ),
            ),
        
            const Text(
              "Alaa M,ahrous",
              style: TextStyle(
                color: Colors.white,
                fontSize: 29,
                fontFamily: 'Pacifico',
              ),
            ),
            
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: Color.fromARGB(191, 255, 255, 255),
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 56,
                child: const Row(
                  children: [
                    Spacer(flex: 1),
                    Icon(
                      Icons.phone,
                      size: 35,
                      color: Color.fromARGB(255, 154, 154, 154),
                    ),
                    Spacer(flex: 2),
                    Text(
                      '(+20) 01023099809',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 76, 76, 76),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(flex: 4),
              
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16, left: 35, right: 35),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 56,
                child: const Row(
                  children: [
                    Spacer(flex: 1),
                    Icon(
                      Icons.mail,
                      size: 35,
                      color: Color.fromARGB(255, 154, 154, 154),
                    ),
                    Spacer(flex: 2),
                    Text(
                      'alaamhrs6@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 76, 76, 76),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(flex: 3),
              
                  ],
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }

}*/

/*class BirthDayCard extends StatelessWidget {
  const BirthDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD2BCD5),
        body: Center(
          child: Image(
            image: AssetImage("images/birth.png"),
          ),
        ),
      ),
    );
  }
}*/
