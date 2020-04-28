import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    RollerDice()
  );
}

class RollerDice extends StatefulWidget {
  @override
  _RollerDiceState createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {

  int nextDice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(
             elevation: 0.0,
             title: Text("Rolling Dice"),
              centerTitle: true,
             backgroundColor: Colors.red,),
             body: Padding(
               padding: const EdgeInsets.all(18.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Expanded(
                       child: Center(child: Image.asset('images/dice$nextDice.png'))),

                   Container(child: FlatButton(color: Colors.red.shade600,
                     onPressed: (){
//                       playLocalAsset();
                        setState(() {
                         nextDice = Random().nextInt(6)+1;
                       });

                     },
                     child: Text("Roll It",style: TextStyle(fontSize: 20),),
                   )),
                 ],
               ),
             ),
      ),
    );
  }
}

//Future<AudioPlayer> playLocalAsset() async {
//  AudioCache cache = new AudioCache();
//  return await cache.play("myCustomSoundEffect.mp3");
//}