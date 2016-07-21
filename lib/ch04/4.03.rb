# List of Depths

require "ch04/4.02.rb"

# again using Ruby's array to illustrate linked_list functionality
# (check ch02 for true implementation)

def list_of_depths(node)
  result = []
  current = []
  current << node if node
  while !current.empty?
    result << current
    parents = current
    current = []
    parents.each do |parent|
      current << parent.left if parent.left
      current << parent.right if parent.right
    end
  end
  result
end
