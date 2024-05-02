# Set up the window
set title: "Mini Golf Game - Start Page"
set background: 'green'
set width: 800
set height: 600

boom = Sprite.new(
  'boom.png',
  clip_width: 127,
  x: 635, y: 230,
  time: 75
)


# Create objects
bunker1 = Circle.new(x: 580, y: 250, radius: 20, color: 'yellow')
bunker2 = Circle.new(x: 580, y: 270, radius: 20, color: 'yellow') 
        
ball = Circle.new(x: 100, y: 350, radius: 10, color: 'white')
hole = Circle.new(x: 700, y: 300, radius: 15, color: 'black')


obstacles = [
  Rectangle.new(x: 0, y: 0, width: 800, height: 10, color: 'brown'),
  Rectangle.new(x: 0, y: 0, width: 10, height: 600, color: 'brown'),
  Rectangle.new(x: 0, y: 590, width: 800, height: 10, color: 'brown'),
  Rectangle.new(x: 790, y: 0, width: 10, height: 600, color: 'brown'),
  Rectangle.new(x: 300, y: 200, width: 50, height: 50, color: 'brown'),
  Rectangle.new(x: 500, y: 300, width: 50, height: 50, color: 'brown')
]