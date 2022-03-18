import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  List data = [
    'abdullah',
    'hammad',
    'humza',
    'ellia',
    'tt',
    'pepsi',
    'borger',
    'pamper'
  ];
  List recent = ['Pepsi', 'Borger', 'Pamper'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == '') {
      return Text('');
    } else {
      return ListTile(
        title: Text('Not Found'),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recent.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recent[index].toString()),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          );
        });
  }
}
