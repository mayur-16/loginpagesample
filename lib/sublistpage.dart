import 'package:flutter/material.dart';

class SublistPage extends StatelessWidget {
  //const SublistPage({Key? key}) : super(key: key);
  Map listdetails = {};
  List<dynamic> cardnames = [];
  List<dynamic> redirectclasses=[];

  @override
  Widget build(BuildContext context) {
    listdetails = ModalRoute.of(context).settings.arguments;
    cardnames = listdetails['lists'];
    redirectclasses=listdetails['redirectclass'];
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Colors.pinkAccent.shade100,
      appBar: AppBar(
        title: Text(listdetails['pagetitle']),
        centerTitle: true,
      ),
      body: cardnames.length != 0
          ? ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: cardnames.length + 2,
              itemBuilder: (context, pos) {
                if (pos == 0 || pos == cardnames.length + 1) {
                  return SizedBox(height: 0);
                }
                  return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/${redirectclasses[pos-1]}');

                    },
                    splashColor: Colors.grey.shade700,
                    child: ListTile(
                      //tileColor: Colors.white,
                      leading: Text(cardnames[pos-1],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  );
              },
              separatorBuilder: (context, int index) {
                return Divider(
                  height: 18,
                  color: Colors.grey,
                );
              })
          : Container(),
    );
  }
}
