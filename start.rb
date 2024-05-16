
require 'ruby2d'
require './golf.rb'
require './course2.rb'

# Set up the window

set title: "Mini Golf Game - Start Page"
set background: 'orange'
set width: 800
set height: 600

# Define colors
button_color = 'blue'
text_color = 'black'

# Create buttons for courses
$course1_button = Rectangle.new(x: 300, y: 200, width: 200, height: 50, color: button_color)
$course2_button = Rectangle.new(x: 300, y: 300, width: 200, height: 50, color: button_color)
$home_button = Rectangle.new(x: 0, y: 500, width: 200, height: 50, color: button_color)

# Add text to buttons
$text1 = Text.new("press 1", x: 335, y: 215, size: 20, color: text_color)
$text2 = Text.new("press 2", x: 335, y: 315, size: 20, color: text_color)
$text3 = Text.new("Press 3 for restart", x: 30, y: 515, size: 20, color: text_color)

# Event handling for button clicks
button_handlers = []

$bana1 = false
$bana2 = false
home = false

$current_bana = 0

def back_to_start
    hide1
    $course1_button.add
    $course2_button.add
    $text1.add
    $text2.add
    $text3.add
    set background: 'orange'
end

key_down_handler = on(:key_down) do |event|
    if event.key == '1'
        hinder 
        $course2_button.remove
        $course1_button.remove
        $text1.remove
        $text2.remove        # Call the function for course 1
        $bana1 = true
        $bana2 = false
        home = false
        $current_bana = 1
    elsif event.key == '2'
        hinder2
        $course2_button.remove
        $course1_button.remove
        $text1.remove
        $text2.remove              # Call the function for course 2'
        $bana1 = false
        $bana2 = true
        home = false    
        $current_bana = 2
    elsif event.key == '3'
        $current_bana = 0
        $bana1 = false
        $bana2 = false
        home = true
        back_to_start
    end
end

update do
    if $current_bana == 1
        golf1
    end
    if $current_bana == 2
        golf1
    end
end
show

