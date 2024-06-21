import 'package:flutter/material.dart';
import 'Quotes.dart';

class QuoteCard extends StatelessWidget {
  final PopularQuotes? quote;
  final Function? delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "${quote?.text ?? ''}",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Playwright',
                color: Colors.red[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "~${quote?.author ?? ''}",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Playwright',
                color: Colors.red[900],
              ),
            ),
            SizedBox(height: 10),
            TextButton.icon(
              onPressed: () => delete?.call(),
              label: Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
