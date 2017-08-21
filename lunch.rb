require 'pry'

@main_items = [

  { main: "Chicken", price: 5.00 },
  { main: "Tacos", price: 4.00 },
  { main: "Pizza", price: 3.00 },
  { main: "Steak", price: 8.00 }
  
]

@side_items = [

{ side: "Salad", price: 1.50 },
{ side: "Fries", price: 1.00 },
{ side: "Veggies", price: 1.75 },
{ side: "Chips", price: 0.50 },

]

@user_items = []

def menu
  puts "Welcome to the Cafeteria!"
  puts "Please select one main entree."
  main_items
  puts "What would you like for your first side?"
  side_one
  puts "What other side would you like?"
  side_two
  puts "So you would like?:"
  order
  puts "Your total comes to:"
  total
end

def main_items
  puts 'Please choose your main dish.'
  @main_items.each_with_index do |key, index|
   puts "#{index + 1}. #{key[:main]} = #{key[:price]}"
   end
 input = gets.strip.to_i
 case input
 when '1'
   @order.push(@main_items[0])
 end
end

def side_items
  puts 'Please choose from the sides'
  @side_items.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:price]}"
    end
 input = gets.strip.to_i
 case input
 when '1'
  @order.push(@side_items[0])
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

def order
  @user_items.each_with_index do |item, index|
    index = index + 1
    puts "#{index}. #{item[:name]} $#{item[:price]}"
  end
end

def total
  sum = 0.0
  @user_items.each do |item|
    sum += item[:price]
  end
  puts "Your total is: $#{sum.round(2)}"
end

main_items
side_items
total
