import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedListScreen(),
    );
  }
}

class AnimatedListScreen extends StatefulWidget {
  @override
  _AnimatedListScreenState createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3'];

  void _addItem() {
    final int index = _items.length;
    _items.insert(index, 'Item ${index + 1}');
    _listKey.currentState?.insertItem(index, duration: Duration(milliseconds: 500));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, animation),
      duration: Duration(milliseconds: 500),
    );
  }

  Widget _buildItem(String item, Animation<double> animation) {
    final color = Color.lerp(Colors.blue, Colors.orange, animation.value);

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: color,
      curve: Curves.easeInOut,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: FadeTransition(
        opacity: animation,
        child: SizeTransition(
          sizeFactor: animation,
          child: ListTile(
            title: Text(
              item,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            tileColor: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colorful Animated List Example'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _addItem,
            child: Text('Add Item'),
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(_items[index], animation);
              },
            ),
          ),
        ],
      ),
    );
  }
}
