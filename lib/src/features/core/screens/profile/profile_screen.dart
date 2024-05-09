import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {},icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("Profile",style: TextStyle(fontSize: 19),),
      ),
      body: SingleChildScrollView(
        child: Container(

        ),
      ),
    );
  }
}
