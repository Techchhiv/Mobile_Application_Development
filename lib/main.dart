import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Flutter layout Demo",
      home: FLayout(),
    );
  }
}

class FLayout extends StatefulWidget {
  const FLayout({super.key});

  @override
  State<FLayout> createState() => _LayoutState();
}

class _LayoutState extends State<FLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter layout Demo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIT_T6lwEr_0HyWaIRuCvqCiSt91QPIItwqA&s"),
          const Star(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonIcons(color: Color.fromARGB(255, 94, 92, 92),label: "Call",icon: Icons.phone,),
              ButtonIcons(color: Color.fromARGB(255, 94, 92, 92),label: "Route",icon: Icons.room_outlined,),
              ButtonIcons(color: Color.fromARGB(255, 94, 92, 92),label: "Share",icon: Icons.share,),
            ],
          ),
          Description()
        ],
      ),
    );
  }
}

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Oeschinen Lake Campground", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                Text("Kandersteg, Switzerland",style: TextStyle(color: Colors.grey, fontSize: 14.0),),
    
              ],
            ),
          ),
          Icon(Icons.star,color: Colors.deepOrange,),
          Text("41")
        ],
      ),
    );
  }
}

class ButtonIcons extends StatelessWidget {
  const ButtonIcons({
    super.key,
    required this.color,
    required this.icon,
    required this.label  
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(label)
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."),
    );
  }
}