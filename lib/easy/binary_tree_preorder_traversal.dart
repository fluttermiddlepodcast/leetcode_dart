class Solution {
  List<int> preorderTraversal(TreeNode? root) {
    final result = <int>[];
    _apply(root, result);
    return result;
  }

  void _apply(TreeNode? root, List<int> nums) {
    if (root == null) {
      return;
    }
    nums.add(root.val);
    _apply(root.left, nums);
    _apply(root.right, nums);
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}
