import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(



      //APPBAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1f4037), Color(0xFF99f2c8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        title: Center(child: Text('A  P  P  B  A  R',
          style: GoogleFonts.marmelad(
            textStyle: TextStyle(
              fontSize: 29.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ),
      ),







      //GOOGLE NAVBAR
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF99f2c8), Color(0xFF1f4037)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xFF1f4037),
            gap: 10,
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.person,
                text: 'Actors',
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10 ),
              ),
              GButton(
                icon: Icons.movie,
                text: 'Films',
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}