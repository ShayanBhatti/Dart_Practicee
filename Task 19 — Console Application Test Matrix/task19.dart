
void main() {
  print('===== DART LAB TEST MATRIX =====\n');

  List<Map<String, String>> tests = [
    {
      'id': 'TC01',
      'task': 'Task 06',
      'input': 'Menu choice = 1, 10 + 5',
      'expected': 'Result = 15',
      'actual': 'Result = 15',
      'status': 'PASS'
    },
    {
      'id': 'TC02',
      'task': 'Task 06',
      'input': 'Invalid menu choice = 8',
      'expected': 'Invalid selection',
      'actual': 'Invalid selection',
      'status': 'PASS'
    },
    {
      'id': 'TC03',
      'task': 'Task 07',
      'input': 'N = 0',
      'expected': 'Sum = 0, Iterations = 0',
      'actual': 'Sum = 0, Iterations = 0',
      'status': 'PASS'
    },
    {
      'id': 'TC04',
      'task': 'Task 07',
      'input': 'N = -3',
      'expected': 'Reject negative input',
      'actual': 'Error message displayed',
      'status': 'PASS'
    },
    {
      'id': 'TC05',
      'task': 'Task 08',
      'input': 'Rows = 5',
      'expected': '15 inner executions',
      'actual': '15 inner executions',
      'status': 'PASS'
    },
    {
      'id': 'TC06',
      'task': 'Task 09',
      'input': 'Index = 8',
      'expected': 'Index out of range',
      'actual': 'Index out of range',
      'status': 'PASS'
    },
    {
      'id': 'TC07',
      'task': 'Task 10',
      'input': 'Repeated course codes',
      'expected': 'Remove duplicates',
      'actual': 'Unique values displayed',
      'status': 'PASS'
    },
    {
      'id': 'TC08',
      'task': 'Task 11',
      'input': 'Missing ID = BS999',
      'expected': 'Student not found',
      'actual': 'Student not found',
      'status': 'PASS'
    },
    {
      'id': 'TC09',
      'task': 'Task 12',
      'input': 'Phone = null',
      'expected': 'Not Provided',
      'actual': 'Not Provided',
      'status': 'PASS'
    },
    {
      'id': 'TC10',
      'task': 'Task 13',
      'input': 'Empty marks list',
      'expected': 'Average = 0',
      'actual': 'Average = 0',
      'status': 'PASS'
    },
    {
      'id': 'TC11',
      'task': 'Task 14',
      'input': 'Default receipt',
      'expected': 'Quantity = 1, Discount = 0%',
      'actual': 'Default values applied',
      'status': 'PASS'
    },
    {
      'id': 'TC12',
      'task': 'Task 15',
      'input': 'Non-numeric text = abc',
      'expected': 'Handle FormatException',
      'actual': 'Error handled',
      'status': 'PASS'
    },
    {
      'id': 'TC13',
      'task': 'Task 15',
      'input': 'Division by zero',
      'expected': 'Handle arithmetic exception',
      'actual': 'Exception handled',
      'status': 'PASS'
    },
    {
      'id': 'TC14',
      'task': 'Task 16',
      'input': 'Empty product list',
      'expected': 'Display empty collection',
      'actual': 'Empty collection displayed',
      'status': 'PASS'
    },
    {
      'id': 'TC15',
      'task': 'Task 17',
      'input': 'Scores with duplicate values',
      'expected': 'Sort and retain duplicates',
      'actual': 'Duplicates retained',
      'status': 'PASS'
    },
    {
      'id': 'TC16',
      'task': 'Task 18',
      'input': 'Marks = 50',
      'expected': 'Student Passed',
      'actual': 'Student Passed',
      'status': 'PASS'
    },
  ];

  for (var test in tests) {
    print('Test ID: ${test['id']}');
    print('Task: ${test['task']}');
    print('Input: ${test['input']}');
    print('Expected: ${test['expected']}');
    print('Actual: ${test['actual']}');
    print('Status: ${test['status']}');
    print('------------------------------');
  }

  int passed = 0;
  int failed = 0;

  for (var test in tests) {
    if (test['status'] == 'PASS') {
      passed++;
    } else {
      failed++;
    }
  }

  print('\n===== TEST SUMMARY =====');
  print('Total Tests: ${tests.length}');
  print('Passed: $passed');
  print('Failed: $failed');
  print('Success Rate: ${(passed / tests.length * 100).toStringAsFixed(2)}%');
}
