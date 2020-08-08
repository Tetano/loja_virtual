import 'package:flutter/material.dart';
import 'package:lojavirtual/models/page_manager.dart';
import 'package:provider/provider.dart';
class DrawerTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final int page;
  const DrawerTile({this.iconData,this.title,this.page});

  @override
  Widget build(BuildContext context) {
  final int curPage = context.watch<PageManager>().page; //Pega o índice da página atual
  final Color primaryColor = Theme.of(context).primaryColor;
    return InkWell(
      onTap: (){
        context.read<PageManager>().setPage(page);
        debugPrint('${page} foi tocada');
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
              iconData,
                size: 32,
                color: curPage == page ? primaryColor : Colors.grey[700],
              ),
            ),
            Text(title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
