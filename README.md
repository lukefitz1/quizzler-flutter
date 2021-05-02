# Digital Hub User Acceptance Tests

This is a quiz taking app developed while taking the course https://www.udemy.com/course/flutter-bootcamp-with-dart/

## Dependencies
- Flutter 2.0.4 

## Setup
- Run the following 2 commands: 
- `flutter clean`
- `flutter packages get`

### Running tests locally:
- First, you will want to get the device ID for the device you will be running the test on using `flutter devices`

- Running a test: 
`flutter drive --driver=test_driver/integration_test.dart --target=integration_test/quiz_test.dart -d YOUR_DEVICE_ID`