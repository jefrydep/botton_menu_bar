import 'package:bookein_app/screens/homee_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class  TicketsScreen  extends StatefulWidget {
  const TicketsScreen  ({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
int _selectedIndex = 3;


static final List<Widget> _widgetOptions = <Widget>[
 HomeScreen(),
const Text('Search'),
const Text('Tickets'),
const Text('Profile'),

];

void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Center(child: _widgetOptions[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type:BottomNavigationBarType.fixed ,
        
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xff526480),
          items:[
            
            BottomNavigationBarItem(icon:Icon(Icons.home), label: 'home',
            activeIcon:Icon(Icons.hearing) ),
            
            BottomNavigationBarItem(icon:Icon(Icons.search), label: 'seach'),
            BottomNavigationBarItem(icon:Icon(Icons.airplane_ticket), label: 'ticket'),
            BottomNavigationBarItem(icon:Icon(Icons.tips_and_updates_outlined), label: 'profile'),
          ] ),
    );
  }
}
