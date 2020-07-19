class Shop {
  String shopName;
  int item1, item2, item3, item4, item5;
  int amount1, amount2, amount3, amount4, amount5;
  int price1, price2, price3, price4, price5;
  int total;


  Shop(String shopName, int item1, int item2, int item3, int item4,
      int item5,
      int amount1, int amount2, int amount3, int amount4, int amount5,
      int price1, int price2, int price3, int price4, int price5, int total) {
    this.shopName = shopName;
    this.item1 = item1;
    this.item2 = item2;
    this.item3 = item3;
    this.item4 = item4;
    this.item5 = item5;
    this.amount1 = amount1;
    this.amount2 = amount2;
    this.amount3 = amount3;
    this.amount4 = amount4;
    this.amount5 = amount5;
    this.price1 = price1;
    this.price2 = price2;
    this.price3 = price3;
    this.price4 = price4;
    this.price5 = price5;
    this.total = total;
  }

  void updateAdd(String shopName, int itemNumber, int price){
    this.shopName = shopName;

    switch(itemNumber){
      case 1: this.item1 = 1; this.amount1+=1;break;
      case 2: this.item2 = 1; this.amount2+=1;break;
      case 3: this.item3 = 1; this.amount3+=1;break;
      case 4: this.item4 = 1; this.amount4+=1;break;
      case 5: this.item5 = 1; this.amount5+=1;break;
    }
    this.total+=price;
  }

  void updateSubtract(int itemNumber, int price){
    if(this.amount1 == 0 && this.amount2 == 0 && this.amount3 == 0 && this.amount4 == 0 && this.amount5 == 0 ){

    }
    else{
      switch(itemNumber){
        case 1: this.amount1-=1;break;
        case 2: this.amount2-=1;break;
        case 3: this.amount3-=1;break;
        case 4: this.amount4-=1;break;
        case 5: this.amount5-=1;break;
      }

      if(this.amount1 == 0){this.item1 = 0;}
      if(this.amount2 == 0){this.item2 = 0;}
      if(this.amount3 == 0){this.item3 = 0;}
      if(this.amount4 == 0){this.item4 = 0;}
      if(this.amount5 == 0){this.item5 = 0;}

      this.total-=price;
    }
  }
}
