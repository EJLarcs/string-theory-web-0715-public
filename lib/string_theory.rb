require 'pry'
def sort_by_appearance(characters, text)
  characters_array = characters.split("")
  long_text_array = text.split("")
  results = []
  long_text_array.each { |n|
    characters_array.each {|i|
      if n == i
       results << n
      elsif !long_text_array.include?(i)
       results[0] = i
      end
    }
  }
  hashed_results = results.group_by{|x| x }.map{ |k, v| [k,v.count]}
  sorted_hash = hashed_results.sort_by{|k, v| v}.reverse
  a = []
  sorted_hash.each {|k,v| a << k }
  a.join("")
end
