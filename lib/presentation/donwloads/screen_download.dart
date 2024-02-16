import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';

class ScreenDownloadPage extends StatelessWidget {
  const ScreenDownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Downloads',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: NetworkImage("https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/feature/myspace/my_space_login_in.png"))
                    // ),
                    child: Column(
                      children: [
                        Image.network(
                            "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/feature/myspace/my_space_login_in.png"),
                        kheight,
                        Text(
                          'No Downloads Available',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        kheight,
                        Text(
                          'Explore and Download your favourite movies and shows to watch on the go',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        kheight,
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  elevation: MaterialStatePropertyAll(0)),
                              child: Text(
                                'Go to Home',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
