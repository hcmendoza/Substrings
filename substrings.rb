puts "Please enter some text"
text = gets.chomp.downcase.split(/[\s\W]/) #User text input saved into array

dictionary = ["a", "at", "and", "be", "below", "car", "down", "eat", "go", "going", "horn", "how", "howdy", "it", "i", "low", "my", "own", "part", "partner", "sit", "yell"]

def substrings(text, dictionary)
	results = Hash.new(0) #results hash

#Each word is cross-referenced with dictionary and added to results hash with number of occurrences.
	text.map do |text_word|
		dictionary.map do |dictionary_word|
			if text_word.match(dictionary_word)
			results[dictionary_word] += 1
			end
		end
	end

	print results
end

substrings(text, dictionary)
