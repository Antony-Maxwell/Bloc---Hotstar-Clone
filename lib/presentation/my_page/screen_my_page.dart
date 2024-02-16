import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/trending/trending_bloc.dart';
import 'package:mini_project/presentation/widgets/custom_avatar.dart';

class ScreenMyPage extends StatelessWidget {
  const ScreenMyPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TrendingBloc>(context)
        .add(const TrendingEvent.getTrendingImages());
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 3, 14, 53),
            Color.fromARGB(255, 15, 15, 18)
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        height: 70,
                        width: 150,
                        child: const Image(
                            image: AssetImage(
                                'assets/images/hot-removebg-preview.png'))),
                    const Text(
                      '⚙️ Help & Settings',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Subscribe to enjoy Disney+ \nHotstar',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 47, 59, 189),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 150,
                          height: 35,
                          child: const Text(
                            'Subscribe',
                          ),
                        ),
                        const Text(
                          'Plans start at ₹149',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '+91 8********6',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Color.fromARGB(255, 57, 57, 57),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profiles',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mode_edit_outlined,
                          size: 11,
                          color: Colors.white,
                        ),
                        Text(
                          ' Edit',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomCircleAvatar(
                        imageUrl:
                            'https://thumb1.shutterstock.com/image-photo/stock-vector-sign-of-the-letter-m-branding-identity-corporate-vector-logo-design-template-isolated-on-a-white-450w-198734639.jpg'),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomCircleAvatar(
                        imageUrl:
                            'https://www.shutterstock.com/image-vector/kids-cartoon-3d-text-style-260nw-2002016630.jpg'),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomCircleAvatar(
                        imageUrl:
                            'https://icon-library.com/images/add-icon-png/add-icon-png-27.jpg'),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
