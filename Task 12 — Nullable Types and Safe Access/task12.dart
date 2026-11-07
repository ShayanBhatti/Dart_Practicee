
void main() {
  // Required non-nullable fields.
  String studentName = 'Muhammad Shayan';
  String registrationNumber = 'BS101';

  // Optional nullable telephone number.
  String? phoneNumber = '03001234567';

  print('===== STUDENT REGISTRATION FORM =====');

  print('Student Name: $studentName');
  print('Registration Number: $registrationNumber');

  // Safe access with fallback.
  print('Phone Number: ${phoneNumber ?? 'Not Provided'}');

  // Safe transformation using null-aware access.
  String? formattedPhone = phoneNumber?.replaceFirst('0', '+92');

  print('Formatted Phone: ${formattedPhone ?? 'Not Available'}');

  // Test when optional value is absent.
  print('\n--- OPTIONAL FIELD TEST ---');

  String? optionalPhone = null;

  print('Optional Phone: ${optionalPhone ?? 'Not Provided'}');

  String? safeResult = optionalPhone?.replaceFirst('0', '+92');

  print('Transformed Phone: ${safeResult ?? 'Not Available'}');
}
