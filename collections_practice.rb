# your code goes here
require 'pry'
def begins_with_r(array)
  result = false
  i = 0
  while i < array.length
    result = array[i].start_with?('r')
    if result == false
      return false
    else
      i += 1
    end
  end
  result
end

def contain_a(array)
  result = []
  i = 0
  j = 0
  while i< array.length
    if array[i].include?('a')
      result[j] = array[i]
      j += 1
    end
    i += 1
  end
  result
end

def first_wa(array)
  result = []
  i = 0

  while i< array.length
    x = array[i]
    if x [0,2] == "wa"
      return array[i]
    end
    i += 1
  end
end

def remove_non_strings(array)
  result = []
  i = 0
  j = 0

  while i < array.length
    if array[i].class == String
      result[j] = array[i]
      j += 1
    end
    i += 1
  end
  result
end

def count_elements(array)
  result = []
  i = 0
  k = 0

  while i < array.length
    my_hash = {:name => "", :count => 0}
    my_hash[:name] = array[i][:name]
    my_hash[:count] = 1
    j = i + 1
    while j < array.length
      if array[j][:name] == my_hash[:name]
        my_hash[:count] += 1
        i += 1
      end
      j += 1
    end
    result[k] = my_hash
    i += 1
    k += 1
  end
  result
end

def merge_data(keys, data)

  keys.each do |hash|
    data.each do |attributes|
      hash.merge!(attributes[hash[:first_name]])
    end
  end
end
=begin
keys = [{:first_name=>"blake", :motto=>"Have a koala-ty day!"},
{:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]

data = [{"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}, "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}}]
=end
def find_cool(cool)

  cool.select do |val|
    if val.has_value?("cool")
      val
    end
  end
end

=begin
:schools {
  {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    }
=end
def organize_schools(schools)
  result = {}

  schools.each do |school, location|
    location.each do |key, val|
      #binding.pry
      if result[val] == nil
        result[val] = [school]
      else
        result[val].push(school)
      end
    end
  end
  result
end
