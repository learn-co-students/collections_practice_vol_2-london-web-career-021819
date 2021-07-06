# your code goes here
def begins_with_r(array)
    array.all? do |name|
    name[0] == 'r'
end
end

def contain_a(array)
    array.select do |name|
    name.include?('a')
end
end

def first_wa(array)
    array.find do |name|
    name[0] == "w" && name[1] == "a"
end
end
        
def remove_non_strings(array)
    array.delete_if do |string|
    string.class != String
end
end

def count_elements(array)
    counts = Hash.new(0)
    array.collect do |element|
    counts[element] += 1
end
    counts.collect do |hash, number|
    hash[:count] = number
end
    counts.keys
end

def merge_data(keys, data)
    keys.each do |name_hash|
    data.each do |hash|
    name_hash.merge!(hash[name_hash[:first_name]])
end
end
end

def find_cool(cool)
    cool.select do |temprature|
    if temprature.has_value?("cool")
    temprature
end
end
end

def organize_schools(schools)
    by_location = {}
    schools.each do |school, location_hash|
    location_hash.each do |symbol, location|
    if by_location[location] == nil
    by_location[location] = [school]
    else
    by_location[location] << school
end
end
end
    by_location
end
