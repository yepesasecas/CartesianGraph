class Distance
  attr_reader :from, :to

  def initialize(args)
    @from = args.fetch(:from, nil)
    @to   = args.fetch(:to, nil)
  end

  def distance
    nodeA = from.coordinates
    nodeB = to.coordinates
    pitagoras nodeA, nodeB
  end

  def pitagoras(nodeA, nodeB)
    sum   = 0
    nodeA.each_with_index do |coord, index|
      p   = coord
      q   = nodeB[index]
      sum = sum + (p - q) ** 2
    end
    Math.sqrt(sum)
  end
end