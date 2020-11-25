import 'package:flutter/material.dart';
import '../Screens/ChangePassword.dart';
import '../Screens/CloseAccount.dart';
import 'Details.dart';
enum Selection
{
  edit,
  change,
  close,
  home,
}
class educatorProfile extends StatefulWidget {
  @override
  _educatorProfileState createState() => _educatorProfileState();
}

class _educatorProfileState extends State<educatorProfile> {
  Selection select=Selection.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
      ),
      backgroundColor: Colors.white10,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        children: [
          Container(
            child: Center(child: Text("My Profile",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset("images/review.png",height: 100,width: 100,)),
                    InkWell(
                      onTap: ()
                        {
                          setState(() {
                            debugPrint("");
                          });
                        },
                      child: Icon(Icons.edit,color: Colors.white,)

                    )
                  ],
                ),
                Text("Maninder Kaur",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 18),),
                Text("maninder@gmail.com",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 16),),
                Text("+91 9999999999",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 16),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: ListTile(
              selected: select==Selection.edit,
              selectedTileColor: Colors.deepOrange.shade600,
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Details(),),);
                setState(() {
                  select=Selection.edit;
                });
              },
                title: Text("Edit profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: ListTile(
              selected: select==Selection.change,
              selectedTileColor: Colors.deepOrange.shade600,
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ChangePassword(),),);
                setState(() {
                  select=Selection.change;
                });
              },
                title: Text("Change password",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: ListTile(
              selected: select==Selection.close,
              selectedTileColor: Colors.deepOrange.shade600,
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CloseAccount(),),);
                setState(() {
                  select=Selection.close;
                });
              },
              title: Text("Close Account",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),),
            ),
          ),
        ],  
      ),
    );
  }
}