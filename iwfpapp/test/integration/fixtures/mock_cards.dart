import 'package:iwfpapp/services/config/typedefs/cashback_promo.dart';
import 'package:iwfpapp/services/config/typedefs/credit_card.dart';
import 'package:iwfpapp/services/config/typedefs/shop_category.dart';

void populateChaseCreditCard(CreditCard card) {
  card.promos.add(CashbackPromo(
      'Gas Station',
      'gas_stations',
      'sector',
      '01/01',
      '03/31',
      'annual',
      5,
      ShopCategory('Gas Station', 'gas_stations')));
  card.promos.add(CashbackPromo('Grag Stores', 'drag_stores', 'sector', '01/01',
      '03/31', 'annual', 5, ShopCategory('Grag Stores', 'drag_stores')));
  card.promos.add(CashbackPromo(
      'Grocery Stores',
      'grocery_stores',
      'sector',
      '04/01',
      '06/30',
      'annual',
      5,
      ShopCategory('Grocery Stores', 'grocery_stores')));
  card.promos.add(CashbackPromo(
      'Home Improvement Stores',
      'home_improvement_stores',
      'sector',
      '04/01',
      '06/30',
      'annual',
      5,
      ShopCategory('Home Improvement Stores', 'home_improvement_stores')));
  card.promos.add(CashbackPromo(
      'Gas Stations',
      'gas_stations',
      'sector',
      '07/01',
      '09/30',
      'annual',
      5,
      ShopCategory('Gas Stations', 'gas_stations')));
  card.promos.add(CashbackPromo(
      'Streaming Services',
      'streaming_services',
      'sector',
      '07/01',
      '09/30',
      'annual',
      5,
      ShopCategory('Streaming Services', 'streaming_services')));
  card.promos.add(CashbackPromo('Chase Pay', 'chase_pay', 'payment', '10/01',
      '12/31', 'annual', 5, ShopCategory('Chase Pay', 'chase_pay')));
  card.promos.add(CashbackPromo('PayPal', 'paypal', 'payment', '10/01', '12/31',
      'annual', 5, ShopCategory('PayPal', 'paypal')));
  card.promos.add(CashbackPromo('All Purchases', 'all_purchase', 'universal',
      'nan', 'nan', 'const', 1, ShopCategory('All Purchases', 'all_purchase')));
}

void populateDiscoverCreditCard(CreditCard card) {
  card.promos.add(CashbackPromo(
      'Grocery Stores',
      'grocery_stores',
      'sector',
      '01/01',
      '03/31',
      'annual',
      5,
      ShopCategory('Grocery Stores', 'grocery_stores')));
  card.promos.add(CashbackPromo(
      'Gas Stations',
      'gas_stations',
      'sector',
      '04/01',
      '06/30',
      'annual',
      5,
      ShopCategory('Gas Stations', 'gas_stations')));
  card.promos.add(CashbackPromo('Uber', 'uber', 'sector', '04/01', '06/30',
      'annual', 5, ShopCategory('Uber', 'uber')));
  card.promos.add(CashbackPromo('Lyft', 'lyft', 'sector', '04/01', '06/30',
      'annual', 5, ShopCategory('Lyft', 'lyft')));
  card.promos.add(CashbackPromo('Restaurants', 'restaurants', 'sector', '07/01',
      '09/30', 'annual', 5, ShopCategory('Restaurants', 'restaurants')));
  card.promos.add(CashbackPromo('PayPal', 'paypal', 'payment', '07/01', '09/30',
      'annual', 5, ShopCategory('PayPal', 'paypal')));
  card.promos.add(CashbackPromo('Amazon.com', 'amazon', 'brand', '10/01',
      '12/31', 'annual', 5, ShopCategory('Amazon.com', 'amazon')));
  card.promos.add(CashbackPromo('Target', 'target', 'brand', '10/01', '12/31',
      'annual', 5, ShopCategory('Target', 'target')));
  card.promos.add(CashbackPromo('Walmart', 'walmart', 'brand', '10/01', '12/31',
      'annual', 5, ShopCategory('Walmart', 'walmart')));
  card.promos.add(CashbackPromo('All Purchases', 'all_purchase', 'universal',
      'nan', 'nan', 'const', 1, ShopCategory('All Purchases', 'all_purchase')));
}

void populateDebitCard(CreditCard card) {
  card.promos.add(CashbackPromo('All Purchases', 'all_purchase', 'universal',
      'nan', 'nan', 'const', 1, ShopCategory('All Purchases', 'all_purchase')));
}

void populateAmazonStoreCard(CreditCard card) {
  card.promos.add(CashbackPromo('Amazon.com', 'amazon', 'brand', 'nan', 'nan',
      'const', 5, ShopCategory('Amazon.com', 'amazon')));
}

List<CreditCard> getMockedCreditCards() {
  List<CreditCard> creditCardMetadataList = [
    CreditCard('Discover Cashback Debit Card', 'discover_cashback_debit_card'),
    CreditCard('Empower Cashback Debit Card', 'empower_cashback_debit_card'),
    CreditCard('Chase Freedom', 'chase_freedom'),
    CreditCard('Amazon Store Card', 'amazon_store_card'),
    CreditCard('Discover Credit Card', 'discover_credit_card'),
  ];
  populateDebitCard(creditCardMetadataList[0]);
  populateDebitCard(creditCardMetadataList[1]);
  populateChaseCreditCard(creditCardMetadataList[2]);
  populateAmazonStoreCard(creditCardMetadataList[3]);
  populateDiscoverCreditCard(creditCardMetadataList[4]);
  return creditCardMetadataList;
}
