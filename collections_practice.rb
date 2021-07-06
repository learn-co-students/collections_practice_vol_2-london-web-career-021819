# your code goes here

def begins_with_r(array)
  answer = true
  array.each do |arr|
    if arr[0] !='r'
      answer = false
    end
  end
  answer
end


def contain_a(array)
  yes_contains = []
  array.each do |arr|
   if arr.include?("a")
     yes_contains << arr
    end
  end
  yes_contains
end


def first_wa(array)
  array.each do |arr|
    if arr[0] == "w" && arr[1] == "a"
      return arr
    end
  end
end

def remove_non_strings(array)
  strings_only = []
  array.each do |arr|
    if arr.is_a?(String)
      strings_only << arr
    end
  end
  strings_only
end


def count_elements(array)
  array.each do |answer|
    answer[:count] = 0
    name = answer[:name]
    array.each do |final|
      if final[:name] == name
        answer[:count] += 1
      end
    end
  end.uniq
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



#