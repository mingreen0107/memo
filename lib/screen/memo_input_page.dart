import 'package:flutter/material.dart';

class MemoInputPage extends StatefulWidget {
  final String? initContent;

  const MemoInputPage({super.key, this.initContent});

  @override
  State<MemoInputPage> createState() => _MemoInputPageState();
}

class _MemoInputPageState extends State<MemoInputPage> {

  late TextEditingController textController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textController = TextEditingController(text: widget.initContent);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
            'Add Memo'
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(hintText: 'Enter memo'),
                maxLines: 25,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, textController.text);
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ));
  }
}
