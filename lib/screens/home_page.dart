import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tasca2/screens/profile_screen.dart';
import 'package:tasca2/styles/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Apbar
      appBar: AppBar(
        title: const Text("Fitness Time"),
        foregroundColor: AppStyles.colorForegroundAppbar,
        backgroundColor: AppStyles.colorBackgroundAppbar,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              changeProfileScreen(context); //método al final
            },
            icon: const Hero(
              tag: 'profile_Antonia',
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  AppResources.userAntonia, //En app_styles.dart
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  //Saludo
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hola Antònia,",
                        style: AppStyles.styleBigTitle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Recorda beure aigua regularment al llarg del dia\nper mantenir el teu cos hidratat i millorar el teu\nrendiment físic i mental.",
                        style: AppStyles.styleBaseText,
                      ),
                      SizedBox(height: 10),
                      //Mas detalles
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Més detalls",
                          style: TextStyle(
                            color: AppStyles.colorTextMoreDetails,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  const Column(
                    children: [
                      //Actividades Recientes
                      //CrossAxisAlignment.start,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Darreres activitats",
                          style: AppStyles.styleMediumTitle,
                        ),
                      ),

                      Divider(),

                      //Card1
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              leading: Icon(
                                Icons.run_circle_outlined,
                                size: 55,
                                color: AppStyles.colorIconCard,
                              ),
                              title: Text("Running",
                                  style: AppStyles.styleTypeActivity),
                              subtitle: Text(
                                "Ayer, 18:20",
                                style: AppStyles.styleBaseText,
                              ),
                              trailing: Text(
                                "7,300 km",
                                style: AppStyles.styleDistance,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Card2
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              leading: Icon(
                                Icons.run_circle_outlined,
                                size: 55,
                                color: AppStyles.colorIconCard,
                              ),
                              title: Text(
                                "Running",
                                style: AppStyles.styleTypeActivity,
                              ),
                              subtitle: Text(
                                "15 Sep 2024, 21:45",
                                style: AppStyles.styleBaseText,
                              ),
                              trailing: Text(
                                "6,550 km",
                                style: AppStyles.styleDistance,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Card3
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              leading: Icon(
                                Icons.run_circle_outlined,
                                size: 55,
                                color: AppStyles.colorIconCard,
                              ),
                              title: Text(
                                "Running",
                                style: AppStyles.styleTypeActivity,
                              ),
                              subtitle: Text(
                                "10 Sep 2024, 21:33",
                                style: AppStyles.styleBaseText,
                              ),
                              trailing: Text(
                                "7,100 km",
                                style: AppStyles.styleDistance,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  //Progreso
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            progressColor: AppStyles.colorGraphProgress,
                            radius: 55.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.65,
                            center: const Text(
                              "65%",
                              style: AppStyles.stylePercent,
                            ),
                            footer: const Text(
                              "Objectiu mensual",
                              style: AppStyles.styleBaseText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //Barra inferior
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inici',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cercar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Botiga',
          ),
        ],
      ),
    );
  }

  void changeProfileScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
  }
}
