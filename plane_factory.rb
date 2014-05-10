module PlaneFactory
  def self.create(nDimension)
    plane = create_nodes(Plane.new(dimension: nDimension))
    plane
  end

  def self.create_nodes(plane)
    100.times do
      coordinates = create_coordinate(plane)
      node        = Node.new(coordinates)
      plane.add_node(node)
    end
    plane
  end

  private
    def self.sample
      (0..10).to_a.sample
    end

    def self.create_coordinate(plane)
      coord = []
      plane.dimension.times do 
        coord.push(sample)
      end
      coord
    end
end