# Build Order

# projects is an array of projects
# dependencies is an array of [a, b]'s where where b is required to build a
def build_order(projects, dependencies)
  # build hash for project requirements, and for what each project can build
  req = Hash.new { |h, k| h[k] = [] }
  can = Hash.new { |h, k| h[k] = [] }
  dependencies.each do |x|
    req[x[0]] << x[1]
    can[x[1]] << x[0]
  end

  # find all projects with NO dependencies, shove it in an array
  non_dep = projects.select { |proj| req[proj].empty? }
  # build is the build order (this also keeps track of "visited" nodes)
  build = []

  # bfs strategy
  queue = non_dep

  while !queue.empty?
    project = queue.shift
    # this checks for cycles
    break if build.include? project
    # add project to build order IFF all it's depencies are already built
    # i.e. already in the build order
    build << project if req[project].all? { |x| build.include? x }
    # then all projects that can be built off this one is added to the queue
    can[project].each { |proj| queue << proj }
  end

  # build is only valid if all projects can be built!
  if build.length == projects.length
    return build
  else
    raise ArgumentError, "No valid builds"
  end
end
