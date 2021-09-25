

class AgeCalculator {
   static int age=0;
  AgeCalculator(int p) {
    print('Enter your birth year : ');
    int birthYear = p;
    age = DateTime.now().year - birthYear;
    print('your Age is $age years old');
  }
}
