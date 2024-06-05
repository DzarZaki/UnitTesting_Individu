import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Dzar',
          birthplace: 'Jogja',
          birthdate: 'April 2003',
          gender: 'Laki laki',
          phonenumber: '0895392483256',
          email: 'dzarzaki2@gmail.com',
          religion: 'Islam',
          job: 'Mahasiswa',
          address: 'Jalan wates',
          polyclinic: 'PKU',
        ),
      ),
    );

    expect(find.text('Name: Dzar'), findsOneWidget);
    expect(find.text('Birth Place: Jogja'), findsOneWidget);
    expect(find.text('Birht Date: April 2003'), findsOneWidget);
    expect(find.text('Gender: Man'), findsOneWidget);
    expect(find.text('Phone Number: 0895392483256'), findsOneWidget);
    expect(find.text('Email: dzarzaki2@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Jalan wates'), findsOneWidget);
    expect(find.text('Polyclinic: PKU'), findsOneWidget);
  });
}
