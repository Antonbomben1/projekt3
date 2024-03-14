require 'ruby2d'

# Set up the window
set title: "Mini Golf Game"
set background: 'green'
set width: 800
set height: 600

boom = Sprite.new(
  'boom.png',
  clip_width: 127,
  x: 635, y: 230,
  time: 75
)

# Constants
BALL_RADIUS = 10
HOLE_RADIUS = 15
OBSTACLE_SIZE = 50
DRAG_MULTIPLIER = 1.6 # Increase sensitivity further

# Create objects
ball = Circle.new(x: 100, y: 350, radius: BALL_RADIUS, color: 'white')
hole = Circle.new(x: 700, y: 300, radius: HOLE_RADIUS, color: 'black')
obstacles = [Rectangle.new(x: 300, y: 200, width: OBSTACLE_SIZE, height: OBSTACLE_SIZE, color: 'brown'),
             Rectangle.new(x: 500, y: 300, width: OBSTACLE_SIZE, height: OBSTACLE_SIZE, color: 'brown')]

# Track mouse position
mouse_down = nil
mouse_up = nil

# Reset ball position
def reset_ball(ball)
  ball.x = 50
  ball.y = 300
end

# Check collision with obstacles
def collides_with_obstacle?(ball, obstacles)
  obstacles.any? do |obstacle|
    obstacle_center_x = obstacle.x + obstacle.width / 2
    obstacle_center_y = obstacle.y + obstacle.height / 2
    distance = Math.sqrt((ball.x - obstacle_center_x) ** 2 + (ball.y - obstacle_center_y) ** 2)
    distance < BALL_RADIUS + OBSTACLE_SIZE / 2
  end
end

# Check if ball reached hole
def reached_hole?(ball, hole)
  distance = Math.sqrt((ball.x - hole.x) ** 2 + (ball.y - hole.y) ** 2)
  if distance <= BALL_RADIUS + HOLE_RADIUS
    return true
  else
    return false
  end
end

# Mouse events
on :mouse_down do |event|
  mouse_down = [event.x, event.y]
end

on :mouse_up do |event|
  mouse_up = [event.x, event.y]

  shot_power = (mouse_down[0] - mouse_up[0]) * DRAG_MULTIPLIER
  shot_angle = (mouse_down[1] - mouse_up[1]) * DRAG_MULTIPLIER

  # Move the ball by changing its position
  ball.x += shot_power
  ball.y += shot_angle
end

# Key press events
on :key_down do |event|
  reset_ball(ball) if event.key == 'r'
end

# Game loop
update do
  if collides_with_obstacle?(ball, obstacles)
    # Do nothing if the ball collides with an obstacle
  end

  if reached_hole?(ball, hole)
    # Change background color to green when the ball reaches the hole
    boom.play 
    reset_ball(ball)
  else
    # Keep background color as green
    set background: 'green'
  end
end

show