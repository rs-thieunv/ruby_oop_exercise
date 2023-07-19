class Geometry 
    attr_accessor :x , :y

    def initialize(x,y)
        @x = x
        @y = y
    end

    def distance(point)
        Math.sqrt((point.x - @x)**2 + (point.y - @y)**2)
    end
    
    def middle (point)
        p "Toa do trung diem cua 2 diem la: (#{(point.x+@x)/2} , #{(point.y+@y)/2})"
    end

end

class Triangle < Geometry
    attr_accessor :point_a,:point_b,:point_c
    def initialize(point_a,point_b,point_c)
        @point_a = point_a
        @point_b = point_b
        @point_c = point_c        
    end

    def triangle_perimeter
        perimeter = point_a.distance(point_b) + point_b.distance(point_c) + point_c.distance(point_a)
        p "Chu vi cua tam giac la: #{perimeter}"
        perimeter
    end

    def triangle_isoscel? 
        point_a.distance(point_b) == point_a.distance(point_c) || point_b.distance(point_a) == point_b.distance(point_c) || point_c.distance(point_a) == point_c.distance(point_b) ? true : false
    end
end

a = Geometry.new(-4, 1)    
b = Geometry.new(2, 4)
c = Geometry.new(2, -2)
a.middle(b)
b.middle(c)
c.middle(a)
triangle = Triangle.new(a, b, c)
p triangle.triangle_isoscel?


