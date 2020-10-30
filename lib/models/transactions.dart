

class Transaction{
  final String title;
  final double value;
  final String category;

Transaction({this.title,this.value,this.category});

}

class Transactions{

List<Transaction> _transactions = [
    Transaction(
      title:'PC game',
      value: 27.87,
      category: 'Gaming',
    ),
    Transaction(
        title:'Mcd',
        value: 17.00,
        category: 'Meals',
    ),
    Transaction(
        title:'Software',
        value: 27.87,
        category: 'Business',
    ),
    Transaction(
        title:'Movie',
        value: 27.87,
        category: 'Entertainment',
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),
    Transaction(

        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),
    Transaction(
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
    ),

  ];

  List<Transaction> get transactions {
    return _transactions;
  }

}