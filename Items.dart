// ignore_for_file: file_names

dynamic itemsMap = <String, int>{};
dynamic itemsAvailability = <String, int>{};
dynamic itemsprice = <String, double>{};
dynamic itemsWeight = <String, double>{};
dynamic itemschker = <String, int>{};
double yourBalance = 100000.0;
double totalPrice = 0.0;
double totalWeight = 0.0;
dynamic discountMap = <String, int>{};
dynamic discountAvailabilityMap = <String, int>{};
// ignore: non_constant_identifier_names
void Main() {
  for (int indx = 0; indx < 50; indx++) {
    itemsMap['item$indx'] = 0;
    itemsprice['item$indx'] = 5000.0;
    itemsWeight['item$indx'] = 50.0;
  }
  for (int i = 0; i < itemsMap.length; i++) {
    itemschker['item$i'] = itemsMap['item$i'];
  }
  itemsAvailability['item0'] = 0;
  itemsAvailability['item1'] = 0;
  itemsAvailability['item2'] = 10;
  itemsAvailability['item3'] = 100;
  itemsAvailability['item4'] = 100;
  itemsAvailability['item5'] = 100;
  itemsAvailability['item6'] = 100;
  itemsAvailability['item7'] = 100;
  itemsAvailability['item8'] = 100;
  itemsAvailability['item9'] = 100;
  itemsAvailability['item10'] = 100;
  itemsAvailability['item11'] = 100;
  itemsAvailability['item12'] = 100;
  itemsAvailability['item13'] = 100;
  itemsAvailability['item14'] = 100;
  itemsAvailability['item15'] = 100;
  itemsAvailability['item16'] = 100;
  itemsAvailability['item17'] = 100;
  itemsAvailability['item18'] = 100;
  itemsAvailability['item19'] = 100;
  itemsAvailability['item20'] = 100;
  itemsAvailability['item21'] = 100;
  itemsAvailability['item22'] = 100;
  itemsAvailability['item23'] = 100;
  itemsAvailability['item24'] = 100;
  itemsAvailability['item25'] = 100;
  itemsAvailability['item26'] = 100;
  itemsAvailability['item27'] = 100;
  itemsAvailability['item28'] = 100;
  itemsAvailability['item29'] = 100;
  itemsAvailability['item30'] = 100;
  itemsAvailability['item31'] = 100;
  discountMap['EZ5'] = 5;
  discountMap['EZ15'] = 15;
  discountMap['EZ20'] = 20;
  discountMap['EZ10'] = 10;
  discountAvailabilityMap['EZ10'] = 5;
  discountAvailabilityMap['EZ15'] = 5;
  discountAvailabilityMap['EZ20'] = 5;
  discountAvailabilityMap['EZ10'] = 5;
}

void ava() {
  itemsAvailability.forEach((key, val) => {itemsAvailability[key] = val});
}

double weightUpdeter() {
  totalWeight = 0;
  for (int windex = 0; windex < itemsMap.length; windex++) {
    totalWeight += ((itemsMap['item$windex'] * itemsWeight['item$windex']));
  }
  return totalWeight;
}
