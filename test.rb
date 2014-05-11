load "plane.rb"
load "distance.rb"
load "node.rb"
load "plane_factory.rb"

plane = PlaneFactory.create(dimension: 3,
                      number_of_nodes: 1000)
p plane.distances
