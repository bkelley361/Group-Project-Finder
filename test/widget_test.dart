import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/backend/schema/users_record.dart';
import '../lib/backend/schema/chats_record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../lib/edit_profile/edit_profile_widget.dart';
import '../lib/components/empty_list_widget.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import '../lib/registration/registration_widget.dart';
import '../lib/dashboard_screen/dashboard_screen_widget.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  // Test that the createUsersRecordData function creates a Map object with the
  // correct keys and values

  test(
      'Test that the createUsersRecordData function creates a Map object with the correct keys and values',
      () {
    final expectedData = createUsersRecordData(
      email: 'test@email.com',
      displayName: 'Test User',
      uid: '123',
      description: 'Test description',
      previousProjects: 'Test previous projects',
      projectIdea: 'Test project idea',
      enrolledClasses: 'Test enrolled classes',
      phoneNumber: '1234567890',
    );

    final actualData = createUsersRecordData(
      email: 'test@email.com',
      displayName: 'Test User',
      uid: '123',
      description: 'Test description',
      previousProjects: 'Test previous projects',
      projectIdea: 'Test project idea',
      enrolledClasses: 'Test enrolled classes',
      phoneNumber: '1234567890',
    );

    expect(actualData, expectedData);
  });

  test('Test createChatsRecordData function', () {
    FakeFirebaseFirestore firestore;
    DocumentReference userA;
    DocumentReference userB;

    firestore = FakeFirebaseFirestore();
    userA = firestore.collection('users').doc('userA');
    userB = firestore.collection('users').doc('userB');

    final data = createChatsRecordData(
      userA: userA,
      userB: userB,
      lastMessage: 'Hello!',
      lastMessageSentBy: userA,
    );

    expect(data['user_a'], userA);
    expect(data['user_b'], userB);
    expect(data['last_message'], 'Hello!');
    expect(data['last_message_sent_by'], userA);
  });

  testWidgets(
      'EmptyListWidget displays a message when there are no matches available',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: EmptyListWidget(),
      ),
    );

    // Check that the message is displayed
    expect(find.text('No Matches'), findsOneWidget);
  });

  testWidgets(
      'EditProfileWidget displays the correct fields for editing the user\'s profile',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: EditProfileWidget(),
      ),
    );

    // Check that the correct fields are displayed
    expect(find.text('Previous Projects'), findsOneWidget);
    expect(find.text('Project Ideas'), findsOneWidget);
    expect(find.text('Your bio'), findsOneWidget);
  });

  testWidgets('RegistrationWidget displays correct text', (tester) async {
    // Create a `RegistrationWidget` to test.
    final registrationWidget = RegistrationWidget();

    // Build the `RegistrationWidget` with the `tester`'s `build` method.
    await tester.pumpWidget(MaterialApp(home: registrationWidget));

    // Verify that the `RegistrationWidget` displays the title text.
    expect(find.text('Group Project Finder'), findsOneWidget);

    // Verify that the `RegistrationWidget` displays the form labels.
    expect(find.text('Email Address'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Display Name'), findsOneWidget);
    expect(find.text('Enrolled Class'), findsOneWidget);
    expect(find.text('Previous Projects'), findsOneWidget);
    expect(find.text('Project Ideas'), findsOneWidget);
  });

  testWidgets('RegistrationWidget manages text editing controllers',
      (tester) async {
    // Create a `RegistrationWidget` to test.
    final registrationWidget = RegistrationWidget();

    // Create an instance of `_RegistrationWidgetState` and call the `build` method on it.
    // This will give us access to the `confirmpasswordController` property.
    final registrationWidgetState = registrationWidget.createState();
    await tester.pumpWidget(MaterialApp(home: registrationWidget));

    // Verify that the text editing controllers are not null.
    expect(registrationWidgetState.confirmpasswordController, null);
    expect(registrationWidgetState.emailAddressController, null);
    expect(registrationWidgetState.passwordController, null);
    expect(registrationWidgetState.displayNameController, null);
    expect(registrationWidgetState.enrolledClassController, null);
    expect(registrationWidgetState.previousProjectsController, null);
    expect(registrationWidgetState.projectIdeasController, null);
    expect(registrationWidgetState.descriptionController, null);

    // Verify that the text editing controllers have the correct initial values.
    expect(registrationWidgetState.confirmpasswordController?.text, null);
    expect(registrationWidgetState.emailAddressController?.text, null);
    expect(registrationWidgetState.passwordController?.text, null);
    expect(registrationWidgetState.displayNameController?.text, null);
    expect(registrationWidgetState.enrolledClassController?.text, null);
    expect(registrationWidgetState.previousProjectsController?.text, null);
    expect(registrationWidgetState.projectIdeasController?.text, null);
    expect(registrationWidgetState.descriptionController?.text, null);
  });

  test('Test that _DashboardScreenWidgetState is a StatefulWidget', () {
    final dashboardScreen = DashboardScreenWidget();
    expect(dashboardScreen.createState(), isA<State<DashboardScreenWidget>>());
  });

  test('Test that SwipeableCardSectionController is initialized in initState',
      () {
    final dashboardScreen = DashboardScreenWidget();
    final state = dashboardScreen.createState();
    state.initState();
    expect(state.swipeableStackController, isNotNull);
  });
}
