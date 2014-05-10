load "plane.rb"
load "distance.rb"
load "node.rb"
load "plane_factory.rb"

plane = PlaneFactory.create(3)

p plane.distances
