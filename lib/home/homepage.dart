import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note":
          "1 - Et eximendam celsorum petiere solent undique cognito eximendam copiis avia."
    },
    {
      "note":
          "2 - Et eximendam celsorum petiere solent undique cognito eximendam copiis avia."
    },
    {
      "note":
          "3 - Et eximendam celsorum petiere solent undique cognito eximendam copiis avia."
    },
    {
      "note":
          "4 - Et eximendam celsorum petiere solent undique cognito eximendam copiis avia."
    },
    {
      "note":
          "5 - Et eximendam celsorum petiere solent undique cognito eximendam copiis avia."
    },
  ];
  @override
  Widget build(BuildContext context) {
    // double mdw = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed("addnotes");
            },
            child: Icon(Icons.add)),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key('$i'), child: ListNotes(notes: notes[i]));
              }),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  // final mdw;
  ListNotes({this.notes});

  @override
  Widget build(BuildContext) {
    return Card(
        child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "images/1.jpeg",
            fit: BoxFit.fill,
            height: 40,
          ),
        ),
        Expanded(
          flex: 3,
          child: ListTile(
            title: Text('Title'),
            subtitle: Text("${notes['note']}"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ),
        ),
      ],
    ));
  }
}
