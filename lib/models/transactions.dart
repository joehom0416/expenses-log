

class Transaction{
  final String title;
  final double value;
  final String category;
  final DateTime date;

Transaction({this.title,this.value,this.category, this.date});

}

class Transactions{

List<Transaction> _transactions = [
    Transaction(
      title:'PC game',
      value: 27.87,
      category: 'Gaming',
      date: DateTime(2020,10,10)
    ),
    Transaction(
        title:'Mcd',
        value: 17.00,
        category: 'Meals',
        date: DateTime(2020,10,11)
    ),
    Transaction(
        title:'Software',
        value: 27.87,
        category: 'Business',
        date: DateTime(2020,10,11)
    ),
    Transaction(
        title:'Movie',
        value: 27.87,
        category: 'Entertainment',
        date: DateTime(2020,10,12)
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,13)
    ),
    Transaction(

        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,13)
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,14)
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,15)
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,20)
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        date: DateTime(2020,10,21)
    ),

  ];

  List<Transaction> get transactions {
    return _transactions;
  }

}