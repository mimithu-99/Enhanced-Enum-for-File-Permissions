import 'package:dart_enhanced_num_for_file_permissions/dart_enhanced_num_for_file_permissions.dart';
import 'package:test/test.dart';

void main() {
  test('FilePermission enum description property returns correct descriptions', () {
    expect(FilePermission.Read.description, equals("Read Permission"));
    expect(FilePermission.Write.description, equals("Write Permission"));
    expect(FilePermission.Execute.description, equals("Execute Permission"));
  });
 
  test('FilePermission canCombineWith method works correctly', () {
    expect(FilePermission.Read.canCombineWith(FilePermission.Write), isTrue);
    expect(FilePermission.Write.canCombineWith(FilePermission.Execute), isTrue);
    expect(FilePermission.Execute.canCombineWith(FilePermission.Read), isTrue);
    expect(FilePermission.Read.canCombineWith(FilePermission.Read), isFalse);
  });
}
