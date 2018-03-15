def input_wizards
  puts "Please enter the names of the witches and wizards"
  puts "To finish, just type stop"
  #create an empty array
  wizards = []
  #get the name of the wizard
  name = gets.chomp
  #while the name is not equal to stop, repeat this code
  while name != "stop" do
    #ask the user for the house of the wizard given they want to enter a wizard
    puts "Please enter the house of the wizard/witch"
    house_of_wizard = gets.chomp
    wizards << {name: name, house: house_of_wizard}
    puts "Now we have #{wizards.length} wizards and witches"
    # get another name from the user
    puts "Please enter the name of the wizard/witch"
    name = gets.chomp
  end
  #return the array of wizards
  wizards

end
def print_header
  puts "The students of Hogwarts School of Witchcraft and Wizardry"
  puts "----------------------------------------------------------"
end

def print(wizards)
  wizards.each do |wizard|
    puts ("We have #{wizard[:name]} of #{wizard[:house]}").center(58)
    end
end
def print_footer(wizards)
  puts "Overall, we have #{wizards.length} great wizards and witches, some being fantastic quidditch players"
end

wizards = input_wizards
print_header
print(wizards)
print_footer(wizards)
