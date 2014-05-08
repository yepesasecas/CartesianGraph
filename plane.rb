class Plane
  attr_accessor :nodes
  def initialize()
    @nodes = []
  end  

  def add_node(node)
    nodes.push node
  end

  def distances
    for i in 0..nodes.count-1 do
      for j in i..nodes.count-1 do
        dist = Distance.new from: nodes[i], to: nodes[j]
        puts "#{i} - #{j}: #{dist.distance}"
      end
    end
  end
end