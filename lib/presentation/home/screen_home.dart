import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/home/home_bloc.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/core/constants/strings.dart';
import 'package:mini_project/infrastructure/post/post_request.dart';
import 'package:mini_project/presentation/home/widgets/number_title_card.dart';
import 'package:mini_project/presentation/widgets/carousel_slider.dart';
import 'package:mini_project/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CarouselDemo(),
                            Positioned(
                              top: 300,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(1)
                                    ],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                    ),
                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey
                                            .shade900, // Set to transparent
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () async{
                                        postDataToTmdb();
                                      },
                                      icon: Icon(Icons.play_arrow),
                                      label: Text(
                                        'Watch Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey
                                            .shade900, // Set to transparent
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {

                            if(state.isLoading){
                              return Center(
                                child: Text(
                                  'Loading data'
                                ),
                              );
                            }else if(state.hasError){
                              return Center(
                                child: Text(
                                  'Error while fetching data'
                                ),
                              );
                            }

                            //latest released 
                            final _latestReleased = state.latestRleased.map((m) {
                              return '$imageAppendUrl${m.posterPath}';
                            }).toList();
                            _latestReleased.shuffle();

                            //popular shows 
                            final _popularShows = state.popularShows.map((m) {
                              return '$imageAppendUrl${m.posterPath}';
                            }).toList();
                            // _popularShows.shuffle();

                            //popular movies
                            final _popularMovies = state.popularMovies.map((m) {
                              return '$imageAppendUrl${m.posterPath}';
                            }).toList();
                            _popularMovies.shuffle();

                            //top 10
                            final top10Today = state.topTenTv.map((t){
                              return '$imageAppendUrl${t.posterPath}';
                            }).toList();
                            return Container(
                              child: Column(
                                children: [
                                  kheight,
                                  MainTitle_card(
                                      title: 'Latest Released', imageList: _latestReleased),
                                  kheight,
                                  MainTitle_card(
                                    title: 'Popular Shows',
                                    imageList: _popularShows,
                                  ),
                                  kheight,
                                  NumberTitleCard(imagesList: top10Today),
                                  kheight,
                                  MainTitle_card(
                                    title: 'Popular Movies',
                                    imageList: _popularMovies,
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                scrollNotifier.value == true
                    ? Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(1),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          height: 70,
                          width: double.infinity,
                          child: const Image(
                            image: AssetImage(
                                'assets/images/hot-removebg-preview.png'),
                          ),
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
