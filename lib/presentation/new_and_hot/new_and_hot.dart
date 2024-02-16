import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/core/constants/strings.dart';
import 'package:mini_project/presentation/new_and_hot/widget/coming_soon_card.dart';
import 'package:mini_project/presentation/new_and_hot/widget/newly_added_card.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              backgroundColor: Colors.transparent,
              bottom:const TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Coming Soon',
                    ),
                    Tab(
                      text: 'Free-Newly Added',
                    )
                  ]),
            ),
          ),
          body: const TabBarView(children: [
             ComingSoonList(key: Key('coming soon')),
             NewlyAddedList(key: Key('NewlyAdded'),)
          ])),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if(state.isLoading){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else if(state.hasError){
              return const Center(
                child: Text(
                  'Error occured'
                ),
              );
            }else if(state.comingSoonList.isEmpty){
              return const Center(child: Text('ComingSoon list is empty'),);
            }else{
              return ListView.builder(
          itemBuilder: (BuildContext context, index) {
            final movie = state.comingSoonList[index];
            if(movie.id == null){
              return SizedBox();
            }
            return ComingSoonWidget(
              id: movie.id.toString(),
              day: '04',
              description: movie.overview??'No description available for this movie',
              month: 'AUG',
              movieName: movie.title?? 'No name found for this movie',
              posterPath: '$imageAppendUrl${movie.posterPath}',

            );
          },
          itemCount: state.comingSoonList.length,
        );
            }
      },
    );
  }
}
class NewlyAddedList extends StatelessWidget {
  const NewlyAddedList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInNewlyAdded());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if(state.isLoading){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else if(state.hasError){
              return const Center(
                child: Text(
                  'Error occured'
                ),
              );
            }else if(state.newlyAddedList.isEmpty){
              return const Center(child: Text('NewlyAdded list is empty'),);
            }else{
              return ListView.builder(
          itemBuilder: (BuildContext context, index) {
            final movie = state.newlyAddedList[index];
            if(movie.id == null){
              return SizedBox();
            }
            final tv = state.newlyAddedList[index];
            return NewlyAddedWidget(
              posterPath: '$imageAppendUrl${tv.posterPath}',
              description: tv.overview?? 'No description is available',
              movieName: tv.originalName ?? 'no',
              );
          },
          itemCount: state.newlyAddedList.length,
        );
            }
      },
    );
  }
}
