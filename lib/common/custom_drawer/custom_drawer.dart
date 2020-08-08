import 'package:flutter/material.dart';
import 'file:///C:/Users/vinic/AndroidStudioProjects/loja_virtual/lib/common/custom_drawer/drawertile.dart';
import 'package:lojavirtual/common/custom_drawer/custom_drawer_header.dart';
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 203, 236, 241),
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          ListView(
            children: [
              CustomDrawerHeader(),
              DrawerTile(iconData: Icons.home,title: "Inicio",page: 0,),
              DrawerTile(iconData: Icons.list,title: "Produtos",page: 1,),
              DrawerTile(iconData: Icons.playlist_add_check,title: "Meus Pedidos",page: 2,),
              DrawerTile(iconData: Icons.location_on,title: "Lojas",page: 3,),
            ],
          ),
        ]
      ),
    );
  }
}
