import 'package:coffeapp/models/brew.dart';
import 'package:coffeapp/screens/home/brew_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';


class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final brews = Provider.of<List<Brew>>(context);
    //print(brews);
    if(brews!=null){
      brews.forEach((brew) {
        print(brew.name);
        print(brew.sugars);
        print(brew.strength);
      });
    }

    return brews==null?Container(width: 0.0,height: 0.0,):ListView.builder(
      itemCount: brews.length,
      itemBuilder:(context,index){
        return BrewTitle(brew: brews[index]);
      },

    );
  }
}
