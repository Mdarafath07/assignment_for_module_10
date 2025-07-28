import 'package:flutter/material.dart';
class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Greeting App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello,World!",style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Welcome to Flutter!",style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(
              height: 10,
            ),
            Image.asset(
                height: 150, width: 150,
                "asset/flutter_logo.png"
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),

                    )

                ),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Button Pressed!"))
                  );
                }, child: Text("Press Me")),
          ],
        ),
      ),
    );
  }
}
