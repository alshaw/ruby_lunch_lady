@main_dish_menu = {"Salisbury Steak" => 10.95, "Chili Dog" => 5.88, "Tuna Salad" => 9.15, "Smoothie" => 8.50}
@side_dishes = {"Maple Pecans" => 5.95, "Sweet Potato Mash" => 3.90, "Garden Salad" => 2.75, "Curry Rice" => 1.50}

class Side
  attr_accessor :dish, :price
  
  def initialize(dish, price)
    @dish = dish
    @price = price
  end
end


def print_main_dish_menu
  puts "Menu for Main Dishes"
  puts @main_dish_menu
  puts "What do you think you want from the menu?"
  puts "Keep it fast though, this particular Lunch Lady doesn't just wait for an answer"
  @main_dish_menu.each do |dish, price|
    puts "Do you want to go with #{dish} for a cost of $#{price}"
  end
end

def main_dish_choice
  puts "Okay, ready? Better be because she wont waint any longer"
  puts "Tell her 1. for Salisbury Steak, 2. for Chili Dog, 3. Tuna Salad, 4. Smoothie "
  @main_menu_choice = gets.strip.to_i
  if @main_menu_choice == 1
    puts "Great, going with the Salisbury Steak for $10.95"
    @main_key = @main_dish_menu.key(10.95)
    @main_value = @main_dish_menu["Salisbury Steak"]
  elsif @main_menu_choice == 2
    puts "Alright, Enjoy that Chili Dog for $5.88"
    @main_key = @main_dish_menu.key(5.88)
    @main_value = @main_dish_menu["Chili Dog"]
  elsif @main_menu_choice == 3
    puts "Cool, the Tuna Salad for $9.15 it is!"
    @main_key = @main_dish_menu.key(9.15)
    @main_value = @main_dish_menu["Tuna Salad"]
  elsif @main_menu_choice == 4
    puts "Nice and simple with the Smoothie for $8.50"
    @main_key = @main_dish_menu.key(8.50)
    @main_value = @main_dish_menu["Smoothie"]
  else
    puts "We didn't catch that try choosing 1, 2, 3, 4 again"
    main_dish_choice
  end
  puts "Great, now let's choose your 2 side dishes"
  
end


def  print_side_dish_menu
  puts "Here is the menu for the Side Dishes:"
  puts @side_dishes
  @side_dishes.each do |dish, price|
    puts "The side dish options are: #{dish} for $#{price}"
  end
#side dish choice
  
end


def side_dish_choice
  puts "Let's get you some side dishes going"
  puts "Tell her 1. for Maple Pecans, 2. for Sweet Potato Mash, 3. Garden Salad, 4. Curry Rice "
  @side_dishes_selection = gets.strip.to_i
  if @side_dishes_selection == 1
    puts "Let's add the Maple Pecans for $5.95"
    @side_key = @side_dishes.key(5.95)
    @side_value = @side_dishes["Maple Pecans"]
  elsif @side_dishes_selection == 2 
    puts "Let's add the Sweet Potato Mash for $3.90"
    @side_key = @side_dishes.key(3.90)
    @side_value = @side_dishes["Sweet Potato Mash"]
  elsif @side_dishes_selection == 3 
    puts "Let's add the Garden Salad for $2.75"
    @side_key = @side_dishes.key(2.75)
    @side_value = @side_dishes["Garden Salad"]
  elsif @side_dishes_selection == 4
    puts "Let's add the Curry Rice for $1.50"
    @side_key = @side_dishes.key(1.50)
    @side_value = @side_dishes["Curry Rice"]
  else
    puts "We didn't catch that go for it again and this time try typing in 1, 2, 3 or 4"
    side_dish_choice
  end
end

def side_one
  puts "Great Combination"
  @side_one = Side.new(@side_key, @side_value)
  puts "What would you like for the second side dish"
end

def side_two
  puts "Another good combo"
  @side_two = Side.new(@side_key, @side_value)
  puts "Now lets get you a total so you know what you owe"
end

def full_order
  puts "Okay so your full order is #{@main_key} with sides of #{@side_one.dish} and #{@side_two.dish}"
end

def total
  puts "Now you total is $#{@main_value + @side_one.price + @side_two.price}"
end

print_main_dish_menu
main_dish_choice
print_side_dish_menu
side_dish_choice
side_one
side_dish_choice
side_two
full_order
total