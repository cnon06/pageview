import 'package:flutter/material.dart';
import 'package:pageview/consts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();

  List<Widget> pages = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'First Page',
          style: fontStyle,
        ),
      ),
    ),
    Container(
      color: Colors.amber,
      child: Center(
        child: Text(
          'Second Page',
          style: fontStyle,
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Third Page',
          style: fontStyle,
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Fourth Page',
          style: fontStyle,
        ),
      ),
    ),
  ];

  int? radioController = 1;
  @override
  Widget build(BuildContext context) {
    var index = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pageview'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: PageView(
              pageSnapping: true,
              reverse: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                
                radioController = value + 1;
                setState(() {});
              },

              
              
              controller: controller,
              children: pages,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: pages
                .asMap()
                .entries
                .map((e) => Radio(
                      value: e.key+1,
                      groupValue: radioController,
                      onChanged: (value) {
                        setState(() {
                      controller.jumpToPage(e.key);
                    });
                      },
                    ))
                .toList(),

            
            
            
            
            
            
            
            
            
            
            

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          )
        ],
      ),
    );
  }
}















































