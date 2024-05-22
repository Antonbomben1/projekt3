
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

$boom = Sprite.new(
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
  Rectangle.new(x: 100, y: 100, width: 150, height: 20, color: 'brown'),     
  Rectangle.new(x: 250, y: 100, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 400, y: 100, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 550, y: 100, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 700, y: 100, width: 100, height: 20, color: 'brown'),     
  Rectangle.new(x: 100, y: 400, width: 100, height: 20, color: 'brown'),     
  Rectangle.new(x: 250, y: 400, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 400, y: 400, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 550, y: 400, width: 20, height: 200, color: 'brown'),     
  Rectangle.new(x: 700, y: 400, width: 100, height: 20, color: 'brown'),     
  Rectangle.new(x: 100, y: 250, width: 150, height: 20, color: 'brown'),     
  Rectangle.new(x: 400, y: 250, width: 20, height: 100, color: 'brown'),     
  Rectangle.new(x: 550, y: 250, width: 150, height: 20, color: 'brown'),     
  Rectangle.new(x: 250, y: 250, width: 20, height: 100, color: 'brown'),     
  Rectangle.new(x: 550, y: 350, width: 150, height: 20, color: 'brown'),     
  Rectangle.new(x: 250, y: 350, width: 20, height: 100, color: 'brown'),     
  Rectangle.new(x: 0, y: 0, width: 800, height: 10, color: 'brown'),          
  Rectangle.new(x: 0, y: 0, width: 10, height: 600, color: 'brown'),          
  Rectangle.new(x: 0, y: 590, width: 800, height: 10, color: 'brown'),        
  Rectangle.new(x: 790, y: 0, width: 10, height: 600, color: 'brown')         
]
end