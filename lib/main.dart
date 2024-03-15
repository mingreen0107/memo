import 'package:flutter/material.dart';
import 'models/memo_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyMemoAppPage(),
    );
  }
}

class MyMemoAppPage extends StatefulWidget {
  const MyMemoAppPage({super.key});

  @override
  State<MyMemoAppPage> createState() => _MyMemoAppPageState();
}

class _MyMemoAppPageState extends State<MyMemoAppPage> {
  List<MemoData> items = [
    MemoData(content: 'Memo 1', createAt: DateTime(2022, 12, 31)),
    MemoData(content: 'Memo 2', createAt: DateTime(2022, 1, 1)),
    MemoData(content: 'Memo 3', createAt: DateTime(2023, 1, 5)),
    MemoData(content: 'Memo 4', createAt: DateTime(2023, 2, 10)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Memo'),
          backgroundColor: Colors.amber,
          actions: [
            TextButton(
                onPressed: (){
                  setState(() {
                    items.add(
                      MemoData(content: 'new item', createAt: DateTime.now())
                    );
                    print(items);
                  });
                },
                child: Text('button'))
          ],
        ),
        body: CustomListView(items: items,
        onDelete: (index){
          setState(() {
            items.removeAt(index);
            print(itmes);
          });
        },)
    );
  }
}
class CustomListView extends StatelessWidget {
  final List<MemoData> items;
  final Function(int) onDelete;
  const CustomListView({super.key, required this.items, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].content),
            subtitle: Text('${items[index].createAt}'),
            tileColor: Colors.amber[100],
            trailing: IconButton(
              onPressed: (){
                onDelete(index);
              },
              icon: Icon(Icons.delete),
            ),
          );
        });
  }
}
