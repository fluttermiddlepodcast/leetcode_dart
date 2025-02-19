import 'package:leetcode_dart/easy/invert_binary_tree.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final ibt = Solution();
      test(
        '4, 7, 2, 9, 6, 3, 1',
        () {
          final solution = ibt.invertTree(
            TreeNode(
              4,
              TreeNode(
                2,
                TreeNode(1),
                TreeNode(3),
              ),
              TreeNode(
                7,
                TreeNode(6),
                TreeNode(9),
              ),
            ),
          );
          expect(
            true,
            _areEqual(
              TreeNode(
                4,
                TreeNode(
                  7,
                  TreeNode(9),
                  TreeNode(6),
                ),
                TreeNode(
                  2,
                  TreeNode(3),
                  TreeNode(1),
                ),
              ),
              solution,
            ),
          );
        },
      );
      test(
        '2, 3, 1',
        () {
          final solution = ibt.invertTree(
            TreeNode(
              2,
              TreeNode(1),
              TreeNode(3),
            ),
          );
          expect(
            true,
            _areEqual(
              TreeNode(
                2,
                TreeNode(3),
                TreeNode(1),
              ),
              solution,
            ),
          );
        },
      );
      test('', () => expect(true, _areEqual(ibt.invertTree(null), null)));
    },
  );
}

bool _areEqual(TreeNode? f, TreeNode? s) {
  if (f != null && s != null) {
    return f.val == s.val && _areEqual(f.left, s.left) && _areEqual(f.right, s.right);
  }
  return f == null && s == null;
}
