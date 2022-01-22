# admin

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1. install xcode
2. install flutter
3. install proto gen for dart
   dart pub global activate protoc_plugin
4. set up path to find the protoc plugin
   export PATH="$PATH:$HOME/.pub-cache/bin"
5. set up dependencies
   dependencies:
   async: ^2.2.0
   grpc:
   path: ../../
   protobuf: ^2.0.0
6.  generate the protos
    protoc --dart_out=grpc:lib/src/generated -Iprotos protos/helloworld.proto
7.  also need to gen the google classes
    protoc --dart_out=lib/src/generated -I/usr/local/include google/protobuf/empty.proto


