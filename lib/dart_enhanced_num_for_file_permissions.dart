/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_enhanced_num_for_file_permissions_base.dart';

// TODO: Export any libraries intended for clients of this package.

/*
2: Enhanced Enum for File Permissions
Question:

Create an enhanced enum FilePermission with values Read, 
Write, Execute.
Implement a description property that returns a descriptive 
text for each permission (e.g., Read returns "Read Permission").
Add a method canCombineWith(FilePermission other) that returns 
true if two different permissions can be combined 
(e.g., Read and Write) and false if they are the same.

*/
enum FilePermission {
  Read("Read Permission"),
  Write("Write Permission"),
  Execute("Execute Permission");

  final String description;
  const FilePermission(this.description);

  bool canCombineWith(FilePermission other) {
    if (other == this) {
      return false;
    } else {
      return true;
    }
  }
}
