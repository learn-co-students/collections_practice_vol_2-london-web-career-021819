# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with? ("r")}
end

def contain_a(array)
  array.select {|word| word.include? ("a")}
end
def first_wa(array)
  array.find {|word| word.to_s.start_with? ("wa")}
end
def remove_non_strings(array)
  array.delete_if {|item| item.class != String}
end
def count_elements(array)
  tally = Hash.new(0)
  array.collect { |item| tally[item]+=1 }
    tally.collect { |hash, number| hash[:count] = number }
  tally.keys
end
def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end
def find_cool
end

def find_cool(array)
  array.select {|key, val| key[:temperature] == "cool"}
end
def organize_schools(hash)
  locations = {}
  hash.values.each {|location| locations[location.values[0]] = []}
  hash.each {|school, location| locations[location.values[0]] << school}
  locations
end 
