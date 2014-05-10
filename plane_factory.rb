module PlaneFactory
  def self.create
    plane = create_nodes(Plane.new)
    plane
  end

  def self.create_nodes(plane)
    1000.times do
      coordinates = [sample, sample, sample]
      node        = Node.new(coordinates)
      plane.add_node(node)
    end
    plane
  end

  def self.sample
    (0..10).to_a.sample
  end
end