import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:list_app/screen_logout.dart';
import 'package:list_app/screen_person.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView test project"),
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
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index){
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://cdn.iconscout.com/icon/free/png-512/avatar-370-456322.png'),
            ),
            title: Text("nijas ${index+1}"),
            onTap: (){
              print("nijas ${index+1} clicked");
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return ScreenPerson(name: "nijas ${index+1}");
              }));
            },
            subtitle: Text("one message has arrived"),
            trailing: Column(
              children: [
                badges.Badge(
                  badgeContent: Text("${index+1}", style: TextStyle(color: Colors.white)),
                  badgeColor: Colors.green.shade500,
                ),
                Spacer(),
                Text("$index : 30 pm"),
              ],
            )
          );
        },
        separatorBuilder: (ctx, index){
          return Divider();
        },
        itemCount: 20,
      )),
    );
  }
}
