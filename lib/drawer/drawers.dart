import 'package:flutter/material.dart';
import 'package:open_mart/drawer/drawer_components.dart';
import 'package:open_mart/signup_screen.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}
class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width * 0.75,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.teal,
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/r j.jpg"),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "r_junaid6",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "roafjunaid09@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child:const DrawerButton(
                  Iconbtton: Icons.person_2_outlined,
                  buttonName: "Edit Account"
              ),
              onTap: (){},
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child:const DrawerButton(
                  Iconbtton: Icons.location_on_outlined,
                  buttonName: "Manage Address"
              ),
              onTap: (){},
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child:const DrawerButton(
                  Iconbtton: Icons.location_on_outlined,
                  buttonName: "My Order"
              ),
              onTap: (){},
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child:const DrawerButton(
                  Iconbtton: Icons.favorite_border_outlined,
                  buttonName: "Add Favorite"
              ),
              onTap: () {}
            ),
        const SizedBox(
        height: 30,
      ),
      InkWell(
        child:const DrawerButton(
            Iconbtton: Icons.history,
            buttonName: "Order History"
        ),
        onTap: () {}
      ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child:const DrawerButton(
                  Iconbtton: Icons.logout,
                  buttonName: "Sign Out"
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
