import 'package:coffeapp/models/user.dart';
import 'package:coffeapp/screens/auth/auth.dart';
import 'package:coffeapp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    print(user);

    if(user==null){
      //return Home or Auth Widget
      return Authenticate();
    }else{
      //return Home or Auth Widget
      return Home();
    }


  }


}
