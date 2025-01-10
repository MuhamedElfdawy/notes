import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

import 'note_item.dart';

class CustomSearch extends SearchDelegate{
  List notesTitle = [];
  List filterNotes = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(
        onPressed: (){
          query = '' ;
        },
        icon: const Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) =>  NoteItem(
          note: notes[index],
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    if(query == ''){
      return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(notes[index].title,style: const TextStyle(fontSize: 16),textAlign: TextAlign.center,),
              ),
            ),
          );
        },
      );
    } else {
      for(int i = 0; i < notes.length; i++){
        notesTitle.add(notes[i].title);
      }
      filterNotes = notesTitle.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filterNotes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(filterNotes[index],
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,),
              ),
            ),
          );
        },
      );
    }

  }

}