require 'pry'

def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
  # returns true if all words start with letter r, false if not
end

def contain_a(array)
  array.select { |word| word.include? "a" }
end

def first_wa(array)
  new_array = []
  array.each do |item|
    if item.to_s.start_with?("wa")
      new_array << item
    end
  end
  new_array.first
end

def remove_non_strings(array)
  array.select { |thing| thing.class == String }
end

def count_elements(array)
  array.uniq # returns new array without duplicates:
  .map { |x| {:name => x[:name], count: array.count(x)} }
end

# ANOTHER WAY: .group_by returns a hash: the keys are the result of the block, the values are an array of the elements that match that key. Then .map (returns array) over each element of the new hash, creating the new key/value pairs required to pass the test...
# def count_elements(array)
#   array.group_by { |x| x }
#   .map {|key, value| key[:count] = value.size ; key }
# end

def merge_data(keys, data) # both arrays
  data[0].values # at index 0 of data, keys are name/motto, values are awesomeness/height/lastname
  .map.with_index { |v, i| keys[i].merge(v) # iterate over awesomeness/height/lastname and merge with corresponding element from firstname/motto
  # binding.pry
  }
end

def find_cool(names_hash)
  names_hash.each do |k, v|
    if k[:temperature] == "cool"
      return [k] # return the key as an array
    end
  end
end

def organize_schools(schools)
  organised = {}
    schools.each do |k,v|
    organised[v[:location]] = [] # <-- remember, this is how you add a key/value pair to a hash:
    # ^ hash name, key, value
    end
  organised.each do |town, names| # iterate over new hash
    schools.each do |k, v|        # add school if its town matches one on that hash loop
      if town == v[:location]
        names.push k
      end
    end
  end
  organised
end
