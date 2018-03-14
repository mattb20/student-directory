wizard_count = 6
#Let's put all students into an array
wizards = [ {name: "Neville Longbottom", house: "Gryffindor"},
  {name: "Draco Malfoy", house: "Slytherin"},
  {name: "Harry Potter", house: "Gryffindor"},
  {name: "Ron Weasley", house: "Gryffindor"},
  {name: "Alicia Spinnet", house: "Gryffindor"},
  {name: "Oliver Wood", house: "Gryffindor"},
  {name: "Cedric Diggory", house: "Hufflepuff"}

]
def print_header
  puts "The students of Hogwarts School of Witchcraft and Wizardry"
  puts "----------------------------------------------------------"
end
def print(wizards)
  wizards.each do |wizard|
  puts "#{wizard[:name]} (#{wizard[:house]} house)"
end
end
def print_footer(wizards)
  puts "Overall we have #{wizards.length} incredible wizards (some of them are also fantastic quidditch players)"
end

print_header
print(wizards)
print_footer(wizards)
