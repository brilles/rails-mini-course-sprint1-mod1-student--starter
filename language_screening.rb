def language_screening(people, language)
    members = people.select { |person| person[:languages].map(&:upcase).include? language.upcase}
    members.map { |person| person[:first_name]}
end

language_screening(candidates, "Python")
language_screening(candidates, "GO")
language_screening(candidates, "javascript")