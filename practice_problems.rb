# # how to add a string to the beginning of another string
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

# In this hash of people and their age, see if "Spot" is present. (4 ways to do so)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")
ages.include?("Spot")
ages.member?("Spot")
ages.fetch("Spot", "Spot isn't in this hash")

# Starting with the string munsters_description, convert it in the 4 ways commented below:
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!    # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.capitalize!  # "The munsters are creepy in a good way."
munsters_description.downcase!    # "the munsters are creepy in a good way."
munsters_description.upcase!      # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# Add ages for Marilyn and Spot to the ages hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match?("Dino")

# Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# How can we add the family pet "Dino" to our flintstones array:
flintstones.push("Dino") # or flintstones << "Dino"

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push("Dino").push("Hoppy") # 1st solution
flintstones.concat(%w(Dino Hoppy))    # 2nd solution

# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
p advice # => "house training your pet dinosaur."

# If we had a table of Flintstone family members that was forty characters in width, 
# how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
title.center(40)
