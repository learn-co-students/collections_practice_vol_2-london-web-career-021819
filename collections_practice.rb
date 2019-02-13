# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word.start_with?("r")
    else
      return false
    end
  end
  true
end

def contain_a(array)
  a_words = []
  array.map do |word|
    if word.include?("a")
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
  array.find do |word|
    word[0] == 'w' && word[1] == 'a'
  end
end

def remove_non_strings(array)
  only_strings = []
  array.each do |element|
    if element.class == String
      only_strings << element
    end
  end
  only_strings
end

def count_elements(array)
  new_array = []
  array.each do |hash|
    if !(new_array[hash])
      new_array[hash]
    end
  end
end
