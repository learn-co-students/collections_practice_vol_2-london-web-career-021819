def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end


def contain_a(array)
  new_array = []
  array.collect do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
   array.find{|el| el.to_s.start_with?("wa")}
end


def remove_non_strings(array)
array.grep(String)
# array.select { |obj| Integer === obj }
end


def count_elements(array)
 array.group_by(&:itself)                
 .map{|k, v| k.merge(count: v.length)}
end



def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |k, v|
        if keys[i].has_value?(k)
          keys[i].merge!(v)
        end
      end
    end
  i+=1
  end
  return keys
end



def find_cool(cool)
  i = 0
  output = [];
  while i < cool.length do
    cool[i].collect do | k, v|
      if v == "cool"
        output << cool[i]
      return output
      end
    end
    i+=1
  end
end





def organize_schools(schools)
  answer = Hash.new
  schools.each do |school, data|
    data.each do |key, value|
      if key == :location
        !answer.keys.include?(value) ? answer[value] = [school] : answer[value] << school
      end
    end
  end
  answer
end
