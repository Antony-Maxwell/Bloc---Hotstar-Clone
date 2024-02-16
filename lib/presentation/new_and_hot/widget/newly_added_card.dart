import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';

class NewlyAddedWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const NewlyAddedWidget({
    super.key, required this.posterPath, required this.movieName, required this.description,
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
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                movieName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(description,
              style:const TextStyle(
                color: Colors.grey,
              ),
              maxLines:4 ,
              ),
              kheight,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton.icon(
                        style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(0),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        label:const Text(
                          "Watch Now",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  )
                ],
              ),
              kheight
            ],
          ),
        ),
      )
    ]);
  }
}
