wizard_count = 6
#Let's put all students into an array
wizards = ["Neville Longbottom",
  "Draco Malfoy",
  "Harry Potter",
  "Ron Weasley",
  "Alicia Spinnet",
  "Oliver Wood"

]
def print_header
  puts "The students of Hogwarts School of Witchcraft and Wizardry"
  puts "----------------------------------------------------------"
end
def print(wizards)
  wizards.each do |wizard|
  puts wizard
end
end
#Then we give a total
puts "Overall we have #{wizards.length} incredible wizards (some of them are also fantastic quidditch players)"
