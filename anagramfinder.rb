####################################
###Class-based Anagram Solution for Codewars
##Explanation
#An anagram number is a number formed by rearranging the digits of another. 
#For instance, 2134 is an anagram of 1234. Write a class called 
#AnagramFinder that is initialized with a starting number and has 
#a method called next_highest that returns the next highest number that 
#is an anagram of the starting number. If a next highest anagram does not 
#exist, return the starting number. e.g.:

#AnagramFinder.new(123).next_highest => 132
#AnagramFinder.new(321).next_highest => 321 # no higher number

##Answer:

class AnagramFinder
  
  def initialize(starting_number)

  @starting_number = starting_number
  # @combinationarray = combinationarray
  # @sortedpermutation = sortedpermutation
  # @numberindex = numberindex
  end


  def next_highest 

    combinationarray = @starting_number.to_s.split("").permutation.to_a.map { |x| x.join }
    print combinationarray
    sortedpermutation = combinationarray.sort{ |x,y| y <=> x}
    
    print sortedpermutation

    numberindex = sortedpermutation.index(@starting_number.to_s)

    puts numberindex

    if numberindex == 0
        nextnum = @starting_number
        puts nextnum
      else
        nextnum = sortedpermutation.fetch(numberindex-1)
        puts nextnum
      end

  end
  

end

#Test:
AnagramFinder.new(123).next_highest
AnagramFinder.new(321).next_highest


# ####################################
# #CONSOLE SOLUTION:
#Begin:

numberarray = []

starting_number = gets.chomp!


combinationarray = "#{starting_number}".split("").permutation.to_a.map { |x| x.join }

# ###Above line replaced need for:
# # starting_number.split(//).each do |number|

# #   numberarray.push(number)
# #  end
# # 
# # digits = numberarray.length.to_i
# # arraycombinations = numberarray.permutation(digits).to_a
# ###


print combinationarray

sortedpermutation = combinationarray.sort{ |x,y| y <=> x}

puts "next sorted array"
print sortedpermutation


numberindex = sortedpermutation.index(starting_number)

puts numberindex

if numberindex == 0
  next_highest = "You're the highest number already!"
else
  next_highest = sortedpermutation.fetch(numberindex-1)
end

puts next_highest
sleep 5

###END CONSOLE SOLUTION
##############################