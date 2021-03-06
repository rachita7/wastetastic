import 'package:flutter/material.dart';
import 'package:wastetastic/screens/NearYouScreen.dart';
import 'package:wastetastic/widgets/HeaderCard.dart';
import 'package:wastetastic/widgets/CategoryButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header_card(
          title: 'Choose to Check NearBy Vendors',
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(
                    icon: Icons.restore_from_trash,
                    category: 'Normal Waste',
                    redirect: () {
                      Navigator.pushNamed(
                        context,
                        NearYouScreen.id,
                        arguments: 'Normal Waste',
                      );
                    },
                  ),
                  CategoryButton(
                    icon: Icons.phone_android_sharp,
                    category: 'E Waste',
                    redirect: () {
                      Navigator.pushNamed(
                        context,
                        NearYouScreen.id,
                        arguments: 'E Waste',
                      );
                    },
                  ),
                  CategoryButton(
                    icon: Icons.lightbulb_outline,
                    category: 'Lighting Waste',
                    redirect: () {
                      Navigator.pushNamed(
                        context,
                        NearYouScreen.id,
                        arguments: 'Lighting Waste',
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(
                    icon: Icons.fire_extinguisher_outlined,
                    category: 'Waste Treatment',
                    redirect: () {
                      Navigator.pushNamed(
                        context,
                        NearYouScreen.id,
                        arguments: 'Waste Treatment',
                      );
                    },
                  ),
                  CategoryButton(
                    icon: Icons.attach_money_sharp,
                    category: 'Cash For Trash',
                    redirect: () {
                      Navigator.pushNamed(
                        context,
                        NearYouScreen.id,
                        arguments: 'Cash For Trash',
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        )
      ],
    );
  }
}
