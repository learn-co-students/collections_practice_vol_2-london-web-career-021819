def begins_with_r(array)
    array.all? do |letter|
    letter[0] == "r"
  end
end

def contain_a(array)
  array.select do |letter|
    letter.include?("a")
  end
end

def first_wa(array)
  array.detect do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  array.uniq.each {|i| count = 0
    array.each {|i2| if i2 == i then count += 1 end}
      i[:count] = count}
end

def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
