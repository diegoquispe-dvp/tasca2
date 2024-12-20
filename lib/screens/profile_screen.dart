import 'package:flutter/material.dart';
import 'package:tasca2/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perfil"),
          foregroundColor: AppStyles.colorForegroundAppbar,
          backgroundColor: AppStyles.colorBackgroundAppbar,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    const SizedBox(height: 10),

                    //Foto, Nombre y detalle
                    const Center(
                      child: Column(children: [
                        Hero(
                          tag: 'profile_Antonia',
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                              AppResources.userAntonia,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Antónia Font",
                          style: AppStyles.styleBigTitle,
                        ),
                        Text(
                          "des del 20 d'abril del 2022",
                          style: AppStyles.styleBaseText,
                        ),
                      ]),
                    ),

                    const SizedBox(height: 40),

                    //Time, Km, Activities
                    const Column(
                      children: [
                        Row(
                          children: [
                            //Card1
                            Card(
                              elevation: 4,
                              color: AppStyles.colorProfileCard,
                              child: SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Icon(Icons.alarm),
                                      Text(
                                        "Time",
                                        style: AppStyles.styleTimeText,
                                      ),
                                      Text(
                                        "2h 45'",
                                        style: AppStyles.styleNumberText,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),

                            //Card2
                            Card(
                              elevation: 4,
                              color: AppStyles.colorProfileCard,
                              child: SizedBox(
                                width: 68,
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Icon(Icons.pin_drop_rounded),
                                      Text(
                                        "Km",
                                        style: AppStyles.styleKmText,
                                      ),
                                      Text(
                                        "212,4",
                                        style: AppStyles.styleNumberText,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),

                            //Card3
                            Card(
                              elevation: 4,
                              color: AppStyles.colorProfileCard,
                              child: SizedBox(
                                width: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Icon(Icons.home),
                                      Text(
                                        "Activities",
                                        style: AppStyles.styleActivitiesText,
                                      ),
                                      Text(
                                        "42",
                                        style: AppStyles.styleNumberText,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    //Sliders
                    Column(
                      children: [
                        //Primer Slider
                        Row(
                          children: [
                            const Spacer(),
                            const Text("Height"),
                            const Spacer(),
                            Slider(
                              value: 30,
                              max: 100,
                              activeColor: AppStyles.colorIconCard,
                              onChanged: (double value) {},
                            ),
                            const Spacer(),
                            const Text("150 cm"),
                            const Spacer(),
                          ],
                        ),

                        //Segundo Slider
                        Row(
                          children: [
                            const Spacer(),
                            const Text("Weight"),
                            const Spacer(),
                            Slider(
                              value: 20,
                              max: 100,
                              activeColor: AppStyles.colorIconCard,
                              onChanged: (double value) {},
                            ),
                            const Spacer(),
                            const Text("55 kg"),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
