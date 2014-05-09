load "plane.rb"
load "distance.rb"
load "node.rb"
load "plane_factory.rb"

plane = PlaneFactory.create

# p plane.distances
p plane.near(plane.nodes.first, 4).count