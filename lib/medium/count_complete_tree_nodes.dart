class Solution {
  int countNodes(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    return countNodes(root.left) + countNodes(root.right) + 1;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}
