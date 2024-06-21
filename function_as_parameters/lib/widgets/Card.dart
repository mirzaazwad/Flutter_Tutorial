import 'package:flutter/material.dart';
import 'package:kittycard/widgets/QuoteCard.dart';
import 'Quotes.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<PopularQuotes> quotes=[
      PopularQuotes(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'
      ),
      PopularQuotes(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'
      ),
      PopularQuotes(
        text: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs'
      ),
      PopularQuotes(
        text: 'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt'
      ),
    PopularQuotes(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'
    ),
    PopularQuotes(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'
    ),
    PopularQuotes(
        text: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs'
    ),
    PopularQuotes(
        text: 'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt'
    ),
    PopularQuotes(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'
    ),
    PopularQuotes(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'
    ),
    PopularQuotes(
        text: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs'
    ),
    PopularQuotes(
        text: 'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt'
    ),
    PopularQuotes(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'
    ),
    PopularQuotes(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'
    ),
    PopularQuotes(
        text: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs'
    ),
    PopularQuotes(
        text: 'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt'
    ),
    PopularQuotes(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'
    ),
    PopularQuotes(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'
    ),
    PopularQuotes(
        text: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs'
    ),
    PopularQuotes(
        text: 'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quotes', style: TextStyle(color: Colors.white, fontFamily: 'Playwright'))
        ),
        backgroundColor: Colors.red[900]
      ),
      body: SingleChildScrollView(
        child:Column(
          children: quotes.map((quote) => QuoteCard(
              quote: quote,
              delete: (){
                    setState(() {
                      quotes.remove(quote);
                    });
                  }
          )).toList(),
        )
      )

    );
  }
}




