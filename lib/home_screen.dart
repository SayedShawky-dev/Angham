import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('أنغام'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: ( ){
            player.setSource(AssetSource('music-1.mp3'));
            print('Testing');
          },
              child: Row(
                children: [
                  Icon(Icons.music_note),
                  Text('Music Name',style: TextStyle(fontSize: 25),)
                ],

          )),



        ],
      ),

      
    );
  }
}
