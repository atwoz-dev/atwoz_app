enum HeartProduct {
  heart45('APP_ITEM_HEART_45', 45, 9000),
  heart90('APP_ITEM_HEART_90', 90, 15000),
  heart110('APP_ITEM_HEART_110', 110, 22000),
  heart350('APP_ITEM_HEART_350', 350, 59000),
  heart550('APP_ITEM_HEART_550', 550, 88000);

  final String code;
  final int heartAmount;
  final int price;

  const HeartProduct(this.code, this.heartAmount, this.price);
}
