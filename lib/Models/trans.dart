class Trans {
  final int id;
  final String transDate;
  final String transName;
  final int amount;

  Trans({ this.id, this.transDate, this.transName, this.amount });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': transDate,
      'name': transName,
      'amount': amount
    };
  }

  @override
  String toString() {
    return 'Trans{id: $id, transName: $transName, amount: $amount}';
  }

}