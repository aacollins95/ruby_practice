class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split
    new_title = []
    lil_words = ['and','in','the','of','a','an']
    new_title.push(words.shift.capitalize)
    words.each { |word|
      if !(lil_words.include? word)
        new_title.push(word.capitalize)
      else
        new_title.push(word)
      end
    }
    @title = new_title.join(" ")
  end

end
