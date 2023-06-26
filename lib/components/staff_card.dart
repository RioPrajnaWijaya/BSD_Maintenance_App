import 'package:bsd_maintenance/utils/config.dart';
import 'package:flutter/material.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({super.key, required this.route});

  final String route;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: Config.widthSize * 0.33,
                child: Image.network(
                  'assets/kenn.jpg', 
                  fit: BoxFit.fill,),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Kennard Sins',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Senior Staff',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star_border, 
                            color: Colors.yellow, 
                            size: 16,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text('5.0'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('Reviews'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('(1 M)'),
                          Spacer(
                            flex: 7,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(route);
        }
      ),
    );
  }
}