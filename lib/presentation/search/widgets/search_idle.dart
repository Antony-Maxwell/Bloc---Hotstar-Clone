import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/search/search_bloc.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/core/constants/strings.dart';
import 'package:mini_project/presentation/search/widgets/category_bar.dart';
import 'package:mini_project/presentation/search/widgets/persistent_header.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return Center(child: CircularProgressIndicator());
            } else if (state.searchIdle.isEmpty) {
              return Center(child: Text('List is Empty'));
            }
            return CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  delegate: PersistentHeader(
                    child: CategoryBar(title: 'People Search For'),
                  ),
                ),
                SliverStaggeredGrid.countBuilder(
                  mainAxisSpacing: 1, // Adjust as needed
                  crossAxisSpacing: 1, // Adjust as needed
                  crossAxisCount: 3,
                  staggeredTileBuilder: (int index) {
                    int rowIndex =
                        (index / 3).floor(); // Assuming 3 columns per row
                    bool isFirstRow = rowIndex == 0;
                    bool isSecondRow = rowIndex == 1;

                    if (isFirstRow) {
                      if (index == 0) {
                        return StaggeredTile.count(
                            2, 2); // First container in first row
                      } else {
                        return StaggeredTile.count(
                            1, 1); // Rest of the containers in first row
                      }
                    } else if (isSecondRow) {
                      return StaggeredTile.count(
                          1, 1); // All containers in second row
                    } else {
                      int repeatIndex = (index - 2) %
                          2; // Repeat the sizes of the first two rows
                      return StaggeredTile.count(
                          repeatIndex + 1, repeatIndex + 1);
                    }
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final movie = state.searchIdle[index];
                    double containerHeight = 150.0;

                    if (index > 0 && index % 3 == 0) {
                      // Change height for the first container in subsequent rows
                      containerHeight = 75.0;
                    }

                    return Padding(
                      padding: EdgeInsets.all(2.0), // Adjust as needed
                      child: Container(
                        height: containerHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                                '$imageAppendUrl${movie.posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: state.searchIdle.length,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
