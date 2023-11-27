import 'package:flutter/material.dart';

class SearchBarExample extends StatefulWidget
{
  @override
  State<SearchBarExample> createState() => _SearchBarExampleState();
}

class _SearchBarExampleState extends State<SearchBarExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text("Flutter Search bar ") ,
      actions: [IconButton(onPressed:(){
        showSearch(context: context, delegate:CustomSearchDelegate extends(),);
      }, icon: Icon(Icons.search),),],),

    );
  }
}

class CustomSearchDelegate extends  SearchDelegate{
  List<String> searchTerms=["APPle","banana","carrot","strawberry"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: (){
      query="";
    }, icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      close(context,null);
    }, icon:Icon(Icons.arrow_back) );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    List<String> matchQuery=[];
    for(var fruits in searchTerms)
      {
        if(fruits.toLowerCase().contains(query.toUpperCase()))
          {
            matchQuery.add(fruits);
          }
      }

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return ListView.builder();
  }
}