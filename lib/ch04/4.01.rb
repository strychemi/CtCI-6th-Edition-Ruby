# Route Between Nodes

# Since an adjacency list is the most common way to represent a graph,
# I'm assuming the input is given as an adjacency list.

# adj is a Hash with arrays as values

def find_route(adj, i, f)
  return false unless adj[i] && adj[f]
  return true if i == f
  bfs_queue = []
  visited = {}
  visited[i] = true
  bfs_queue << adj[i].first

  while !bfs_queue.empty?
    current = bfs_queue.shift
    return true if current == f
    visited[current] ? break : visited[current] = true
    adj[current].each { |n| bfs_queue << n }
  end

  return false
end
