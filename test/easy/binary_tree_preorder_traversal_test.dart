import 'package:leetcode_dart/easy/binary_tree_preorder_traversal.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final btpt = Solution();
      test(
        '1,2,3',
        () {
          final result = btpt.preorderTraversal(
            TreeNode(
              1,
              null,
              TreeNode(
                2,
                null,
                TreeNode(3),
              ),
            ),
          );
          expect(result, const [1, 2, 3]);
        },
      );
      test(
        '',
        () {
          final result = btpt.preorderTraversal(null);
          expect(result, const []);
        },
      );
      test(
        '1',
        () {
          final result = btpt.preorderTraversal(TreeNode(1));
          expect(result, const [1]);
        },
      );
    },
  );
}
