import 'package:flutter/material.dart';
import 'package:carApp/Models/trans.dart';

import 'detailwidget.dart';

class TransList extends StatelessWidget {
  final List<Trans> trans;
  TransList({Key key, this.trans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        itemCount: trans == null ? 0 : trans.length,
        itemBuilder: (BuildContext context, int index) {
          return
            Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailWidget(trans[index])),
                    );
                  },
                  child: ListTile(
                    title: Text(trans[index].transName),
                    subtitle: Text(trans[index].amount.toString()),
                  ),
                )
            );
        });
  }
}
