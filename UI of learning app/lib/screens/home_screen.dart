import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        leadingWidth: 70,
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
          ),
          SizedBox(width: 40,)
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 680,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img1.jpg"),
                    fit: BoxFit.cover),
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(120))),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 400, 150, 50),
              child: Text(
                "Easy and\nquick\nLearn Language online!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 40, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HomeScreen()));
              },
              child: Text("START", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.indigo),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 80, vertical: 15))),
            ),
          )
        ],
      ),
    );
  }
}
