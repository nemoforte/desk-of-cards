// dart object.dart

import 'dart:core';

void main() {
  Deck deck = Deck();
    // ..shuffle();
  print('$deck \n');
  // print('${deck.cardsWithSuit('Diamonds')} \n');
  // print('${deck.deal(5)} \n');
  // print(deck);
  deck.removeCard('Diamonds', 'A');
  print(deck);
}

class Deck {
  List<Card> cards = <Card>[];

  Deck() {
    List<String> ranks = <String>['A', '2', '3', '4', '5']; // , '6', '7', '8', '9', '10', 'J', 'Q', 'K'];
    List<String> suits = <String>['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (String mySuit in suits) {
      for (String rank in ranks) {
        Card card = Card(
            rank: rank,
            suit: mySuit
        );
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  Iterable<Card> cardsWithSuit(String suit) {
    return cards.where((Card card) {
      return card.suit == suit;
    });
  }

  List<Card> deal(int handSize) {
    List<Card> hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  void removeCard(String suit, String rank) {
    cards.removeWhere((Card card) {
      return card.suit == suit && card.rank == rank;
    });
  }
}

class Card {
  String suit = '';
  String rank = '';

  Card({required this.rank, required this.suit});

  @override
  String toString() {
    return '$rank of $suit';
  }
}
