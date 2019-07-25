# Rails Assessments

# We've done the following exercises in Javascript, Now try them in RUBY (You can do them in Javascript again if you want extra practice - not required.)
#
# The World Translator
# Write a Method named hello_world that:
#
# takes 1 argument, a language code (e.g. "es", "de", "en")
# returns "Hello, World" for the given language, for at least 3 languages. It should default to returning English.
#hello_world("es") should return "Hola Mundo"
#hello_world("de") should return "Hallo Welt"
def hello_world(lang)
    lang.downcase!
    if lang == "es"
        return "Hola Mundo"
    elsif lang == "de"
        return "Hallo Welt"
    else
        return "Hello World"
    end
end
puts hello_world('es')
puts hello_world('de')
puts hello_world('en')


# The Grade Assigner
# Write a Method named assign_grade that:
#
# takes 1 argument, a number score.
# returns a grade for the score, either "A", "B", "C", "D", or "F".
# assign_grade(90) should return A
# assign_grade(75) should return C

def assign_grade(num = nil)
    num = num.to_i
    if num != nil
        if num >= 90
            return "A"
        elsif num >= 80
            return "B"
        elsif num >= 70
            return "C"
        elsif num >= 60
            return "D"
        elsif num < 60
            return "F"
        else
            return "n/a"
        end
    else
        return "n/a"
    end
end
puts assign_grade(94) #should return A
puts assign_grade(45) #should return C


# The Pluralizer
# Write a method named pluralizer that:
#
# takes 2 arguments, a noun and a number.
# returns the number and pluralized form of the noun, if necessary.
# pluralizer(5, cat) should return "5 cats"
# pluralizer(1, dog) should return "1 dog" because the number one does not require a plural noun
# Arguments will always be a number and a singular noun.

# Bonus: Make it handle a few collective nouns like "sheep", "geese", "children", "people" and "species".
def pluralizer(num, obj)
    obj.downcase!
    if num > 1
        if obj == "sheep"
            return "#{num} #{obj}"
        elsif obj == "goose"
            return "#{num} geese"
        elsif obj == "child"
            return "#{num} children"
        elsif obj == "person"
            return "#{num} people"
        elsif obj == "species"
            return "#{num} #{obj}"
        else
            return "#{num} #{obj}s"
        end
    else
        return "#{num} #{obj}"
    end
end

puts pluralizer(1, 'dog')
puts pluralizer(2, 'dog')
puts pluralizer(1, 'sheep')
puts pluralizer(2, 'sheep')
puts pluralizer(1, 'person')
puts pluralizer(2, 'person')