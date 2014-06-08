class Plane
  attr_accessor :nodes
  attr_accessor :dimension

  def initialize(args = {})
    @nodes     = args.fetch(:nodes, [])
    @dimension = args.fetch(:dimension, 2)
  end  

  def add_node(node)
    nodes.push(node) if validate_node_dimension(node)
  end

  def distances
    for i in 0..count do
      for j in i..count do
        nodeA = nodes[i]
        nodeB = nodes[j]
        dist  = nodeA.distance_to(nodeB)
        puts "#{i} - #{j}: #{dist}" 
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

    def validate_node_dimension(node)
      if node.dimension != dimension
        raise Exception, "Node dimension different from Plane dimension."
        false
      else
        true
      end
    end
end