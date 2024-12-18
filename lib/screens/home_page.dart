import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tasca2/styles/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Time"),
        foregroundColor: AppStyles.colorForegroundAppbar,
        backgroundColor: AppStyles.colorBackgroundAppbar,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: logout,
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                AppResources.userAntonia,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Saludo
              const Text(
                "Hola Antònia,",
                style: AppStyles.styleBigTitle,
              ),
              const SizedBox(height: 10),
              const Text(
                "Recorda beure aigua regularment al llarg del dia\nper mantenir el teu cos hidratat i millorar el teu\nrendiment físic i mental.",
                style: AppStyles.styleBaseText,
              ),
              const SizedBox(height: 10),
              //Mas detalles
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Més detalls",
                  style: TextStyle(
                    color: AppStyles.colorTextMoreDetails,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              //Actividades Recientes
              const Text("Darreres activitats",
                  style: AppStyles.styleMediumTitle),
              const Divider(),

              const Column(
                children: [
                  //Card1
                  Card(
                    child: Column(
                      //mainAxisSize: MainAxisSize.min, //hace que ocupe solo el espacio necesario para sus hijos
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      //mainAxisSize: MainAxisSize.min, //hace que ocupe solo el espacio necesario para sus hijos
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      //mainAxisSize: MainAxisSize.min, //hace que ocupe solo el espacio necesario para sus hijos
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
              Center(
                child: Column(
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
              ),
            ],
          ),
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

  void logout() {
    debugPrint("Logout");
  }
}
