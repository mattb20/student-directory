@wizards = [] # empty array accessible to all methods
def interactive_menu
  loop do
    #print the menu and ask the user what to do
    print_menu
    #read the input and save it into a variable
    selection = gets.chomp
    #do what the user has asked
    case selection
      when "1"
      # input the wizards
        input_wizards
      when "2"
      # show the wizards
      show_wizards
      when "3"
       print_by_house
      when "9"
        exit # will cause program to terminate
      else
        puts "I don't know what you meant try again"
      end
    end
  end
def input_wizards
  puts "Please enter the names of the witches and wizards"
  puts "To finish, just type stop"
  #get the name of the wizard
  name = gets.chomp
  #while the name is not equal to stop, repeat this code
  while name != "stop" do
    #ask the user for the house of the wizard given they want to enter a wizard
    puts "Please enter the house of the wizard/witch"
    house_of_wizard = gets.chomp
    @wizards << {name: name, house: house_of_wizard}
    puts "Now we have #{@wizards.length} wizards and witches"
    # get another name from the user
    puts "Please enter the name of the wizard/witch"
    name = gets.chomp
  end


end
def print_header
  puts "The students of Hogwarts School of Witchcraft and Wizardry"
  puts "----------------------------------------------------------"
end

def print
  @wizards.each do |wizard|
    puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
    end
end
def print_footer
  puts "Overall, we have #{@wizards.length} great wizards and witches, some being fantastic quidditch players"
end

def print_by_house
  puts "Please enter the name of the house you would like to print"
  house = gets.chomp.downcase
  @wizards.each do |wizard|
      if wizard[:house].downcase == house
        puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
      end
    end
end

def print_menu
  puts "1. Input the wizards"
  puts "2. Show the wizards"
  puts "3. Show wizards/witches in a certain house"
  puts "9. Exit"
end

def show_wizards
  print_header
  print
  print_footer

end

interactive_menu
