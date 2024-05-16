
def hide2
  $bunker1.remove
  $bunker2.remove
  $ball.remove
  $hole.remove
  $obstacles.each do |obstacle|
    obstacle.remove
  end
end

def hinder2
  set background: 'green'
  if $bunker1
    hide2
  end

boom = Sprite.new(
  'boom.png',
  clip_width: 127,
  x: 635, y: 430,
  time: 75
)

# Create objects for the different course
$bunker1 = Circle.new(x: 150, y: 200, radius: 20, color: 'yellow')
$bunker2 = Circle.new(x: 650, y: 400, radius: 20, color: 'yellow')

$ball = Circle.new(x: 100, y: 300, radius: $ball_RADIUS, color: 'white')
$hole = Circle.new(x: 700, y: 500, radius: $hole_RADIUS, color: 'black')

$obstacles = [
  Rectangle.new(x: 100, y: 100, width: 150, height: 20, color: 'brown'),     # Path 1
  Rectangle.new(x: 250, y: 100, width: 20, height: 200, color: 'brown'),     # Path 2
  Rectangle.new(x: 400, y: 100, width: 20, height: 200, color: 'brown'),     # Path 3
  Rectangle.new(x: 550, y: 100, width: 20, height: 200, color: 'brown'),     # Path 4
  Rectangle.new(x: 700, y: 100, width: 100, height: 20, color: 'brown'),     # Path 5
  Rectangle.new(x: 100, y: 400, width: 100, height: 20, color: 'brown'),     # Path 6
  Rectangle.new(x: 250, y: 400, width: 20, height: 200, color: 'brown'),     # Path 7
  Rectangle.new(x: 400, y: 400, width: 20, height: 200, color: 'brown'),     # Path 8
  Rectangle.new(x: 550, y: 400, width: 20, height: 200, color: 'brown'),     # Path 9
  Rectangle.new(x: 700, y: 400, width: 100, height: 20, color: 'brown'),     # Path 10
  Rectangle.new(x: 100, y: 250, width: 150, height: 20, color: 'brown'),     # Path 11
  Rectangle.new(x: 400, y: 250, width: 20, height: 100, color: 'brown'),     # Path 12
  Rectangle.new(x: 550, y: 250, width: 150, height: 20, color: 'brown'),     # Path 13
  Rectangle.new(x: 250, y: 250, width: 20, height: 100, color: 'brown'),     # Path 14
  Rectangle.new(x: 550, y: 350, width: 150, height: 20, color: 'brown'),     # Path 15
  Rectangle.new(x: 250, y: 350, width: 20, height: 100, color: 'brown'),     # Path 16
  Rectangle.new(x: 0, y: 0, width: 800, height: 10, color: 'brown'),          # Top boundary
  Rectangle.new(x: 0, y: 0, width: 10, height: 600, color: 'brown'),          # Left boundary
  Rectangle.new(x: 0, y: 590, width: 800, height: 10, color: 'brown'),        # Bottom boundary
  Rectangle.new(x: 790, y: 0, width: 10, height: 600, color: 'brown')         # Right boundary
]
end