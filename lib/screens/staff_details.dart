import 'package:bsd_maintenance/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/button.dart';
import '../utils/config.dart';

class StaffDetail extends StatefulWidget {
  const StaffDetail({super.key});

  @override
  State<StaffDetail> createState() => _StaffDetailState();
}

class _StaffDetailState extends State<StaffDetail> {

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Staff Details',
        icon: const FaIcon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            }, 
            icon: FaIcon(
              isFav ? Icons.favorite_rounded : Icons.favorite_outline,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const AboutStaff(),
            const DetailBody(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Button(
                width: double.infinity,
                title: 'Maintenance Request',
                onPressed: () {
                  Navigator.of(context).pushNamed('booking_page');
                },
                disabled: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutStaff extends StatelessWidget {
  const AboutStaff({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage("assets/kenn.jpg"),
            backgroundColor: Colors.white,
          ),
          Config.spaceSmall,
          const Text(
            'Kennard Sins',
            style: TextStyle(
              color: Config.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.8,
            child: const Text(
              'Kennard Sins is currently studying in President University',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Config.spaceSmall,
          StaffInfo(),
          Config.spaceSmall,
          Text(
            'About Staff',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),
          ),
          Config.spaceSmall,
          Text(
            'Kennard Sins is famous because you can see his life is a lot different from others. He is a respected doctor, an engineer, karate master, pizza delivery guy, plumber, he had his own company, was in the army and fought for his country, he was a professor, a detective, a cop, a wrestling champion and an astronaut. So he is famous because he is the most talented man alive on earth.',
            style: TextStyle(
                fontSize: 15
              ),
              softWrap: true,
              textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class StaffInfo extends StatelessWidget {
  const StaffInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        InfoCard(
          label: 'Occupants', 
          value: '69',
        ),
        SizedBox(width: 15,),
        InfoCard(
          label: 'Experiences', 
          value: '10 years',
        ),
        SizedBox(width: 15,),
        InfoCard(
          label: 'Rating', 
          value: '5.0',
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return 
      Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Config.primaryColor
            ),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              children: <Widget>[
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
