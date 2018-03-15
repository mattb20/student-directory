def input_wizards
  puts "Please enter the names of the witches and wizards"
  puts "To finish, just type stop"
  #create an empty array
  wizards = []
  #get the name of the wizard
  name = gets.chomp
  #while the name is not equal to stop, repeat this code
  while name != "stop" do
    #add the wizard hash to the array
    wizards << {name: name, house: :Gryffindor}
    puts "Now we have #{wizards.length} wizards and witches"
    # get another name from the user
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
  wizards_index = 0
  while wizards_index < wizards.length
    puts "We have #{wizards[wizards_index][:name]} of #{wizards[wizards_index][:house]}"
    wizards_index += 1
  end
end
def print_footer(wizards)
  puts "Overall, we have #{wizards.length} great wizards and witches, some being fantastic quidditch players"
end

wizards = input_wizards
print_header
print(wizards)
print_footer(wizards)
