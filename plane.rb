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
        dist = distance(nodes[i], nodes[j])
        puts "#{i} - #{j}: #{dist.distance}"
      end
    end
  end

  def near(node, radius)
    nears = []
    for i in 0..count do
      iNode = nodes[i]
      dist = distance(node, iNode).distance
      if node != iNode && dist < radius
        nears.push({node: iNode, distance: dist})
      end
    end
    nears
  end

  def distance(nodeA, nodeB)
     dist = Distance.new from: nodeA, to: nodeB
     dist
  end

  private
    def count
      count ||= nodes.count - 1
      count
    end
end