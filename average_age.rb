# step2:
# define a method average_age(people)
def average_age(people)
    ages = people.map { |person| person[:age]}
    sum = ages.reduce(0) { |sum, age| sum + age}
    sum.to_f / people.length
end

average_age(candidates) # => 26.333333333333332