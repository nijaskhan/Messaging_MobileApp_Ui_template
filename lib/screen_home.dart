import 'package:flutter/material.dart';
import 'package:list_app/screen_calls.dart';
import 'package:list_app/screen_chat.dart';
import 'package:list_app/screen_status.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentPage = 0;

  final pages = [
    ScreenChat(),
    ScreenStatus(),
    ScreenCalls()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FakeApp"),
        shadowColor: Colors.blueGrey,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14, right: 5),
          child: Image.network('https://external-content.duckduckgo.com/iu/?u='
              'https%3A%2F%2Flogodownload.org%2Fwp-content%2Fuploads%2F2015%2F04%2Fwhatsapp-logo-1.'
              'png&f=1&nofb=1&ipt=87090c317ac540403ce76166a556207a92a747f6380efa6e5ffd63455ad45f00&ipo=images'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0), // Adjust the padding value as needed
            child: IconButton(
                icon: Icon(Icons.login_outlined),
              onPressed: (){
                  print("logout button clicked !");
                  Navigator.of(context).pushNamed('screen_2');
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        unselectedItemColor: Colors.black87,
        onTap: (index){
          setState((){
            _currentPage=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'chats'),
          BottomNavigationBarItem(icon: Icon(Icons.adjust_rounded), label: 'status'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'calls')
        ],
      ),
      body: pages[_currentPage]
    );
  }
}
