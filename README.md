# Group Finder Project

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Getting started continued:

1. ![UML Class Diagram](https://user-images.githubusercontent.com/112658136/206881847-24f2b382-df53-41e0-94e3-d54aa2876d0b.png)
2. ![Use Case Diagram](images/Use-Case-Diagram.png)
3. ![Sequence Diagram Part 1](images/Sequence-Diagram-pt.1.png)
4. ![Sequence Diagram Part 2](images/Sequence-Diagram-pt.2.png)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
