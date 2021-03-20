import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<String> todos = [];
TextEditingController input = new TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  void handleAddTolist() {
    setState(() {
      todos.add(input.text);
      input.text = "";
    });
  }

  void handleRemoveTodoFromList(String item) {
    setState(() {
      todos.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo list"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              child: TextFormField(
                controller: input,
                decoration: InputDecoration(
                  hintText: "รายการสิ่งที่ตองทำ",
                  border: OutlineInputBorder(),
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: todos
                    .map(
                      (item) => Card(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text("$item"),
                                IconButton(
                                  onPressed: () {
                                    handleRemoveTodoFromList(item);
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
