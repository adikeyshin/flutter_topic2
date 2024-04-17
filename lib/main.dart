import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  void _increase() {
    setState(() {
      _count += 1;
    });
  }
  void _decrease() {
    setState(() {
      _count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tap "-" to decrement'),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: _increase,
                child: Icon(Icons.add),
              ),
              Padding(padding: EdgeInsets.only(
                left: 20
              ),
                child: Text(
                  '$_count',
                  style: TextStyle(fontSize: 24),
                ),

              ),

              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: _decrease,
                child: Icon(Icons.remove),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Tap "+" to increment'),
        ],
      ),
    );
  }
}
