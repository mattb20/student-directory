wizard_count = 6
# First we print the witches and wizards
#Let's put all students into an array
wizards = ["Neville Longbottom",
  "Draco Malfoy",
  "Harry Potter",
  "Ron Weasley",
  "Alicia Spinnet",
  "Oliver Wood"

]
#and then print them(a horrible way!!)
puts "The students of Hogwarts School of Witchcraft and Wizardry"
puts "----------------------------------------------------------"
wizards.each do |wizard| 
  puts wizard
end
#Then we give a total
puts "Overall we have #{wizards.length} incredible wizards (some of them are also fantastic quidditch players)"
