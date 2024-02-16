import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const ComingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        height: 220,
        child: Image.network(
          posterPath,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null){
              return child;
            }else{
              return const Center(child: Icon(Icons.wifi),);
            }
          },
          errorBuilder: (context, error, stackTrace) {
            return Center(child: Icon(Icons.wifi));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieName,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Releasing on $day / $month"),
              kheight,
              Text(
                description,
                maxLines: 4,
                style: TextStyle(color: Colors.grey),
              ),
              kheight,
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton.icon(
                  style:const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Remind Me $month $day",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              kheight
            ],
          ),
        ),
      )
    ]);
  }
}
