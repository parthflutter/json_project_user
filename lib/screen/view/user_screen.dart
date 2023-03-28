import 'package:flutter/material.dart';
import 'package:json_project_user/screen/provider/user_provider.dart';
import 'package:provider/provider.dart';

class json_user extends StatefulWidget {
  const json_user({Key? key}) : super(key: key);

  @override
  State<json_user> createState() => _json_userState();
}
User_provider?user_providert,user_providerf;
class _json_userState extends State<json_user> {
  @override
  Widget build(BuildContext context) {
    user_providerf=Provider.of<User_provider>(context,listen: false);
    user_providert=Provider.of<User_provider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("User Json"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            user_providerf!.jsonParsing();
          }, child: Text("User Data")),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Text("${user_providert!.postList[index]['id']}"),
                  title: Text("${user_providert!.postList[index]['name']}"),
                  subtitle: Text("${user_providert!.postList[index]['username']}"),
                ),
              ),
            );
          },
            itemCount: user_providert!.postList.length,
          )),
        ],
      ),
    ),
    );
  }
}
