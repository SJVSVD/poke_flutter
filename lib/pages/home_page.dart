import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:poke_flutter/pages/tabs/pokebolas_tab.dart';
import 'package:poke_flutter/pages/tabs/Pociones_tab.dart';
import 'package:poke_flutter/pages/tabs/pokemones_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'PokeStore',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Pokemones',
                ),
                Tab(
                  text: 'Pokebolas',
                ),
                Tab(
                  text: 'Pociones',
                ),
              ],
            ),
            backgroundColor: Color(0xFF152227),
            leading: Icon(
              Icons.gamepad,
              color: Colors.redAccent,
            ),
          ),
          body: TabBarView(children: [
            ComidaTab(),
            AcompanamientoTab(),
            BebidaTab(),
          ]),
          bottomNavigationBar: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cart,
                  color: Colors.white,
                ),
                Text('VER CARRITO'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
