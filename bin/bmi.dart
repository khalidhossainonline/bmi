double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getBMICategory(double bmi) {

if (bmi<18.5){
  return "Category: Underweight";
}
else if(bmi<24.9){
  return"Category: Normal";
}
else if(bmi<29.9){
  return"Category: Overweight";
}
else{
  return"Category: Obese";
}
}


void main(){
  double weight =70;
  double height =1.65;

  double bmi = calculateBMI(weight , height);
  String category = getBMICategory( bmi);

  print("Your BMI is: ${bmi.toStringAsFixed(2)}");
  print("Category is: $category");
}