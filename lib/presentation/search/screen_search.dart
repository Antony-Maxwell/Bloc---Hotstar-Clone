import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/search/search_bloc.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/domain/core/debouncer/debouncer.dart';
import 'package:mini_project/presentation/search/widgets/search_idle.dart';
import 'package:mini_project/presentation/search/widgets/search_result.dart';

class ScrenSearch extends StatelessWidget {
  ScrenSearch({super.key});

  final _debouncer = Debouncer(delay: Duration(milliseconds: 1 * 1000));

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
              _debouncer.call(() {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchMovie(movieQuery: value));
              });
            },
            placeholder: 'Movies, Show and more',
            placeholderStyle: TextStyle(color: Colors.black),
            backgroundColor: Colors.white,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            suffixMode: OverlayVisibilityMode.always,
            suffixIcon: Icon(
              CupertinoIcons.mic,
              color: Colors.black,
            ),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          kheight,
          Expanded(child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.searchResultList.isEmpty) {
                return SearchIdleWidget();
              } else {
                return SearchResult();
              }
            },
          )),
          // Expanded(child: SearchResult()),
        ],
      ),
    ));
  }
}
