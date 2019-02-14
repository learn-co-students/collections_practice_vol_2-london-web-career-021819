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
  new_array = array.uniq
  new_array.each do |element|
    element[:count] = array.count(element)
  end
  new_array
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    data.each do |person|
      key.merge!(person[key[:first_name]])
      merged_data << key
    end
  end
  merged_data
end


def find_cool(data)
  dat = []
  data.each do |key|
    if key.values.include?("cool")
      dat << key
    end
  end
  dat
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, location|
    local = location[:location]
    if !(new_hash[local])
      new_hash[local] = []
      new_hash[local] << school
    else
      new_hash[local] << school
    end
  end
  new_hash
end
