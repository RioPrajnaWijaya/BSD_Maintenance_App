import 'package:bsd_maintenance/components/maintenance_card.dart';
import 'package:bsd_maintenance/components/staff_card.dart';
import 'package:bsd_maintenance/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map<String, dynamic> user = {};
  Map<String, dynamic> doctor = {};
  List<dynamic> favList = [];
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.bolt,
      "category": "Electricity",
    },
    {
      "icon": FontAwesomeIcons.powerOff,
      "category": "Power Off",
    },
    {
      "icon": FontAwesomeIcons.wifi,
      "category": "Wi-Fi",
    },
    {
      "icon": FontAwesomeIcons.lightbulb,
      "category": "Lightbulb",
    },
    {
      "icon": FontAwesomeIcons.broom,
      "category": "Cleaning",
    },
    {
      "icon": FontAwesomeIcons.bug,
      "category": "Bug Invasion",
    },
    {
      "icon": FontAwesomeIcons.lock,
      "category": "Robbery",
    },
    {
      "icon": FontAwesomeIcons.piedPiper,
      "category": "Leaking",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Acil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/kenn.jpg'),
                      ),
                    )
                  ]
                ),
                Config.spaceSmall,
                const Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),
                Config.spaceSmall,
                SizedBox(
                  height: Config.heightSize * 0.05,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(medCat.length, (index) {
                      return Card(
                        margin: const EdgeInsets.only(right: 20),
                        color: Config.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FaIcon(
                                medCat[index]['icon'],
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                medCat[index]['category'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                                ),
                              )
                            ],
                          )
                        )
                      );
                    }),
                  )
                ),
                Config.spaceSmall,
                const Text(
                  'Available Today',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),
                Config.spaceSmall,
                const MaintenanceCard(),
                Config.spaceSmall,
                const Text(
                  'Top Staff',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Config.spaceSmall,
                Column(
                  children: List.generate(10, (index) {
                    return const StaffCard(
                      route: 'staff_details',
                    );
                  }),
                )
              ],
            )
          ),
        )
      )
    );
  }
}