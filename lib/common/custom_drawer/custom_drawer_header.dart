import 'package:flutter/material.dart';
import 'package:lojavirtual/models/user_manager.dart';
import 'package:provider/provider.dart';
import 'drawertile.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 24, 16, 8),
      height: 180,
      child: Consumer<UserManager>(
     builder: (_,userManager, __){
       return Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
         Text('Michele Miranda Store',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 34
         ),
         ),
           Text('Olá, ${userManager.user?.name ?? ''}',
             overflow: TextOverflow.ellipsis, //Limita o nome que será mostrado em tela
             maxLines: 2,
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
             ),
           ),
           GestureDetector(
             onTap: (){
              if(userManager.isLoggedIn) {
                userManager.signOut();
              }
              else Navigator.of(context).pushNamed('/login');
             },
             child: Text(
               userManager.isLoggedIn
                   ? 'Sair'
                   : 'Entre ou Cadastre-se >',
               style: TextStyle(
                 color: Theme.of(context).primaryColor,
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
               ),
             ),
           )
         ],
       );
     },
      ),
    );
  }
}
