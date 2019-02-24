def begins_with_r(array)
  answer = true
    array.each do |x|
      return answer = false if x.start_with?("r") == false
    end
    answer
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x[0]+x[1]=="wa"}
end

def remove_non_strings(array)
  array.select {|x| x.class == String}
end

# def remove_non_strings(array)
#   container = []
#   array.each do |element|
#     container << element if element.is_a?(String)
#   end
#   container
# end

#array = [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
def count_elements(array)
  unique_array = array.uniq # returns new array without duplicates:
  # =>  [{:name=>"blake"}, {:name=>"ashley"}]
  unique_array.map { |element| {:name => element[:name], count: array.count(element)}}
  # => [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]
  #notice that count is on original array and not array.uniq
end

#keys = [{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
#data = [{"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}, "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}}]
#expected: [{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson", :motto=>"Have a koala...:first_name=>"ashley", :height=>60, :last_name=>"dubs", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
def merge_data(array1, array2)
  merged_hash = {}
  array1.each do |hash1|
    array2.each do |hash2|
      hash2_name = hash1[:first_name]
      hash1.merge!hash2[hash2_name]
    end
  end
end

def find_cool(hash)
  hash.select{|x| x.values.include?("cool")}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |bootcamp, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << bootcamp
    else
       organized_schools[location] = []
       organized_schools[location] << bootcamp
    end
  end
  organized_schools
end
