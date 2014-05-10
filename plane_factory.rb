module PlaneFactory
  def self.create(args)
    nDimension  = args.fetch(:dimension)
    nNumerNodes = args.fetch(:number_of_nodes)
    plane = create_nodes(Plane.new(dimension: nDimension), nNumerNodes)
    plane
  end

  def self.create_nodes(plane, number_of_nodes)
    number_of_nodes.times do
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