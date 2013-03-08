class Point
  def initialize(x,y)
    @x, @y = x, y
  end

  def x
    @x
  end

  def y
    @y
  end

  def to_s
    "(#@x,#@y)"
  end
end

p = Point.new(5,0)
q = Point.new(p.x*2, p.y*2)
q.x = 0
puts q.x