# start_page.rb

require 'ruby2d'


# Set up the window

set title: "Mini Golf Game - Start Page"
set background: 'green'
set width: 800
set height: 600

# Define colors
button_color = 'blue'
text_color = 'black'

# Create buttons for courses
course1_button = Rectangle.new(x: 300, y: 200, width: 200, height: 50, color: button_color)
course2_button = Rectangle.new(x: 300, y: 300, width: 200, height: 50, color: button_color)

# Add text to buttons
text1 = Text.new("press 1", x: 335, y: 215, size: 20, color: text_color)
text2 = Text.new("press 2", x: 335, y: 315, size: 20, color: text_color)

# Event handling for button clicks
button_handlers = []

bana1 = false
bana2 = false


key_down_handler = on(:key_down) do |event|
    if event.key == '1'
        course2_button.remove
        course1_button.remove
        text1.remove
        text2.remove        # Call the function for course 1
        bana1 = true
    elsif event.key == '2'
        course2_button.remove
        course1_button.remove
        text1.remove
        text2.remove                # Call the function for course 2'
        bana2 = true
    end
end

update do
    if bana1
        load 'golf.rb'
    end
    if bana2
        load 'course2.rb'
    end
end

show
