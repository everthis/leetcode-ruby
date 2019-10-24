# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def rob(root)
  rob_helper(root).max
end

def rob_helper(root)
  return [0, 0] if root.nil?  
  l_taken, l_not_taken = rob_helper(root.left)
  r_taken, r_not_taken = rob_helper(root.right)    
  [root.val + l_not_taken + r_not_taken, [l_taken, l_not_taken].max + [r_taken, r_not_taken].max]
end
