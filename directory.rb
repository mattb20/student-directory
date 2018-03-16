@wizards = [] # empty array accessible to all methods
@options_for_user = ["Input the wizards", "Show the wizards", "Show wizards by house","Print by first letter of name", "Save the list of wizards", "Load the wizards", "Exit"] # array to store the possible options for the interactive menu
def interactive_menu
  loop do
    #print the menu and ask the user what to do
    print_menu
    #read the input and save it into a variable
    selection = gets.chomp
    #do what the user has asked
    process(selection)
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

def print_list_of_wizards
  @wizards.each do |wizard|
    puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
    end
end
def print_footer
  puts "Overall, we have #{@wizards.length} great wizards and witches, some being fantastic quidditch players"
end

def print_by_house
  puts "Please enter the name of the house git you would like to print"
  house = gets.chomp.downcase
  @wizards.each do |wizard|
      if wizard[:house].downcase == house
        puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
      end
    end
end

def print_menu
 for i in 0..@options_for_user.length-1
   puts "#{i+1}. #{@options_for_user[i]}"
 end
end

def show_wizards
  print_header
  print_list_of_wizards
  print_footer
end
def process(selection)
  case selection
  when "1"
    input_wizards
  when "2"
    print_list_of_wizards
  when "3"
    print_by_house
  when "4"
    print_by_first_name_first_character
  when "5"
    save_wizards
  when "6"
    load_wizards
  when "7"
    exit
  end
end
##WRITE NEW METHODS HERE:##
def save_wizards
  #open the file for writing
  file = File.open("wizards.csv", "w")
  # iterate over the array of save_wizards
  @wizards.each do |wizard|
    wizard_data = [wizard[:name], wizard[:house]]
    csv_line = wizard_data.join(",")
    file.puts csv_line
  end
  file.close
end
def print_by_first_name_first_character
  puts "Please enter the first character of wizards name:"
  letter = gets.chomp.downcase
  @wizards.each do |wizard|
    if wizard[:name].chars[0].downcase == letter
      puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
    end
end
end
def load_wizards
  file = File.open("wizards.csv", "r")
  file.readlines.each do |line|
    name, house = line.chomp.split(",")
    @wizards << {name: name, house: house.to_sym}
end
end
interactive_menu
