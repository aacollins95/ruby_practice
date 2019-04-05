def translate (phrase)
  vowels = ['a','e','i','o']
  ending = 'ay'
  words = phrase.split
  newWords = []
  words.each { |word|
    if vowels.include? word[0]
      newWords.push(word + ending)
    else
      newWords.push(get_word_beginning(word,vowels) + ending)
    end
  }
  return newWords.join(" ")

end

def get_word_beginning(word,vowels)
  i = 0
  puts word
  until (vowels.include? word[i])
    i += 1
  end
  puts word[i..]
  return word[i..] + word[0..(i-1)]
end
