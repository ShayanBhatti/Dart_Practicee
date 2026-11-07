void main() {
  // Explicit types
  int age = 21;
  double cgpa = 3.72;
  String fullName = 'Muhammad Shayan';
  bool isEnrolled = true;
  var city = 'Karachi';

  final String country = 'Pakistan';


  const double pi = 3.14159;

  print('--- Student Profile ---');
  print('Name:        $fullName');
  print('Age:         $age');
  print('CGPA:        $cgpa');
  print('Enrolled:    $isEnrolled');
  print('City:        $city  (inferred type: ${city.runtimeType})');
  print('Country:     $country');
  print('Pi:          $pi');
 }