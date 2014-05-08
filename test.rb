load "plane.rb"
load "distance.rb"
load "node.rb"

plane = Plane.new
nodeA = Node.new [1,1]
nodeB = Node.new [2,3]
nodeC = Node.new [4,1]
nodeD = Node.new [5,4]
nodeE = Node.new [7,12]


plane.add_node nodeA
plane.add_node nodeB
plane.add_node nodeC
plane.add_node nodeD
plane.add_node nodeE

puts plane.distances