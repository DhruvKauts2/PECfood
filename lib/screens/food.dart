class Food {
  String item;
  int rate;
  int quantity;
  int amount;
  //int total;

  Food(String item, int rate, int quantity) {
    this.item = item;
    this.rate = rate;
    this.quantity = quantity;
    this.amount = rate * quantity;
    //total = 0;
  }
}