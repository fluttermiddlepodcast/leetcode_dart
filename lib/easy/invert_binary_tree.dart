class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) {
      return null;
    }
    final left = root.left;
    final right = root.right;
    root.left = right;
    root.right = left;
    invertTree(left);
    invertTree(right);
    return root;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}
