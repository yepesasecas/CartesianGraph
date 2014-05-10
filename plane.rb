class Plane
  attr_accessor :nodes, :nodes_distances
  def initialize()
    @nodes = []
    @nodes_distances = []
  end  

  def add_node(node)
    nodes.push node
  end

  def distances
    for i in 0..count do
      for j in i..count do
        nodeA = nodes[i]
        nodeB = nodes[j]
        dist  = nodeA.distance_to(nodeB)
        puts "#{i} - #{j}: #{dist.distance}"
      end
    end
  end

  def near(node, radius)
    nears = []
    for i in 0..count do
      iNode = nodes[i]
      dist  = node.distance_to iNode
      if node != iNode && dist < radius
        nears.push({node: iNode, distance: dist})
      end
    end
    nears
  end

  private
    def count
      count ||= nodes.count - 1
      count
    end
end