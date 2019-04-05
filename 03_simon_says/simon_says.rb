def echo phrase
  return phrase
end

def shout phrase
  return phrase.upcase
end

def repeat (phrase,*args)
  times = 1
  if args.length > 0
    times = args[0]-1
  end
  return phrase + " #{phrase}"*times
end

def start_of_word(word,num)
  return word[0..num-1]
end

def first_word(phrase)
  words = phrase.split
  return words[0]
end

def titleize(phrase)
  words = phrase.split
  newWords = []
  littleWords = ['and','the','over']
  words[0] = words[0].capitalize
  words.each do |word|
    newWord = word
    if !littleWords.include? word
      newWord = word.capitalize
    end
    newWords.push(newWord)
  end
  return newWords.join(" ")
end
