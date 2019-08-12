def language_screening(people, language)
    members = people.select { |person| person[:languages].map(&:upcase).include? language.upcase}
    members.map { |person| person[:first_name]}
end

language_screening(candidates, "Python") #  ["Sara", "Jason"]
language_screening(candidates, "GO") # ["Jane"]
language_screening(candidates, "javascript") # ["Jane"]