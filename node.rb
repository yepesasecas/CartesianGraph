class Node
  attr_reader :coordinates

  def initialize(coordinates)
    @coordinates = coordinates
  end

  def distance_to(node)
    dist = Distance.new from: self, to: node
    dist.distance
  end

  def dimension
    coordinates.count
  end
end