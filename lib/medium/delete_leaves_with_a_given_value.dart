class Solution {
  TreeNode? removeLeafNodes(TreeNode? root, int target) {
    if (root != null) {
      root.left = removeLeafNodes(root.left, target);
      root.right = removeLeafNodes(root.right, target);
      if (root.val == target && root.left == null && root.right == null) {
        return null;
      }
      return root;
    }
    return null;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}
