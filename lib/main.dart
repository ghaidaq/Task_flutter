// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "الملف الشخصي",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            backgroundColor: Color.fromARGB(159, 181, 51, 94),
            centerTitle: true,
            leading: Icon(
              Icons.person_3_sharp,
              size: 30,
              color: Colors.white,
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/2636575.jpg"),
                radius: 100,
              ),
            ),
            list('الاسم', 'غيداء محمد', Icons.person),
            SizedBox(
              height: 20,
            ),
            list('رقم الهاتف', '05993928823', Icons.phone),
            SizedBox(
              height: 20,
            ),
            list('العنوان', 'الرياض', Icons.location_on),
            SizedBox(
              height: 20,
            ),
            list('الايميل', 'ghaida_qa@outlook,com', Icons.mail),
            SizedBox(
              height: 20,
            ),
          ]),
        ));
  }

  Container list(String name, String fullName, IconData icons) {
    final Color iconColor = Colors.white;
    return Container(
      width: 350,
      height: 90,
      decoration: BoxDecoration(
          color: Color.fromARGB(159, 113, 111, 112),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Text(
          fullName,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: Icon(
          icons,
          color: iconColor,
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
