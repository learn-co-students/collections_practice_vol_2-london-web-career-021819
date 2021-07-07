# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
return array.select { |word| word.include?("a") }
end 

def first_wa(array)
  newarr = []
  array.each { |word| 
  if word.to_s.start_with?("wa")
    newarr.push(word)
  end}
  newarr.first
end
 
def remove_non_strings(array)
  array.delete_if { |word| !(word.class == String) }
end

def count_elements(array)
array.uniq
.map { |x| {:name => x[:name], count: array.count(x)} }
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(array)
  array.each do |a, b| 
    if a[:temperature] == "cool"
      return [a]
    end
  end
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end


