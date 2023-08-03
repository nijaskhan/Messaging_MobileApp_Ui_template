import 'package:flutter/material.dart';
import 'package:list_app/screen_person.dart';
import 'package:badges/badges.dart' as badges;

class ScreenChat extends StatefulWidget {
  const ScreenChat({super.key});

  @override
  State<ScreenChat> createState() => _ScreenChatState();
}

class _ScreenChatState extends State<ScreenChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        ));
  }
}
