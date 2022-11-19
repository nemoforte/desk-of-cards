// dart object.dart

void main() {
  Deck deck = Deck();
  print(deck);

}

class Deck {
  List<Card> cards = <Card>[];

  Deck() {
    List<String> ranks = <String>[
      'A',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      'J',
      'Q',
      'K'
    ];
    List<String> suits = <String>['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (String suit in suits) {
      for (String rank in ranks) {
        Card card = Card(rank, suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    return cards.toString();
  }
}
class Card {
  String suit = '';
  String rank = '';

  Card(this.rank, this.suit);

  @override
  String toString() {
    return '$rank of $suit';
  }
}