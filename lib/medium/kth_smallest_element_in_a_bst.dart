class Solution {
  int kthSmallest(TreeNode? root, int k) {
    final nums = <int>[];
    _apply(root, nums);
    return nums[k - 1];
  }

  void _apply(TreeNode? node, List<int> nums) {
    if (node != null) {
      _apply(node.left, nums);
      nums.add(node.val);
      _apply(node.right, nums);
    }
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}
