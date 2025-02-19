import 'package:leetcode_dart/medium/delete_leaves_with_a_given_value.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final dlwagv = Solution();
      test(
        '2',
        () {
          final result = dlwagv.removeLeafNodes(
            TreeNode(
              1,
              TreeNode(
                2,
                TreeNode(2),
                null,
              ),
              TreeNode(
                3,
                TreeNode(2),
                TreeNode(4),
              ),
            ),
            2,
          );
          expect(
            true,
            _areEqual(
              TreeNode(
                1,
                null,
                TreeNode(
                  3,
                  null,
                  TreeNode(4),
                ),
              ),
              result,
            ),
          );
        },
      );
      test(
        '3',
        () {
          final result = dlwagv.removeLeafNodes(
            TreeNode(
              1,
              TreeNode(
                3,
                TreeNode(3),
                TreeNode(2),
              ),
              TreeNode(3),
            ),
            3,
          );
          expect(
            true,
            _areEqual(
              TreeNode(
                1,
                TreeNode(
                  3,
                  null,
                  TreeNode(2),
                ),
                null,
              ),
              result,
            ),
          );
        },
      );
      test(
        '2',
        () {
          final result = dlwagv.removeLeafNodes(
            TreeNode(
              1,
              TreeNode(
                2,
                TreeNode(
                  2,
                  TreeNode(2),
                  null,
                ),
              ),
              null,
            ),
            2,
          );
          expect(
            true,
            _areEqual(
              TreeNode(1),
              result,
            ),
          );
        },
      );
    },
  );
}

bool _areEqual(TreeNode? f, TreeNode? s) {
  if (f != null && s != null) {
    return f.val == s.val && _areEqual(f.left, s.left) && _areEqual(f.right, s.right);
  }
  return f == null && s == null;
}
