$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  new_hash = {
    
  }
  index = 0
  while index < director_data.length do
    total_gross = 0
    inner_index = 0
    inner_len = director_data[:movies].length
    

    
      while inner_index < inner_len do
        total_gross += director_data[:movies][inner_index][:worldwide_gross]
        inner_index += 1
      end
    index += 1
  end
  total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
  def directors_totals(nds)
  result = {}
  index_dr = 0
  
  while index_dr < nds.length do
      director = nds[index_dr][:name]
      director_data = nds[index_dr]
      result[director] = gross_for_director(director_data)

      index_dr +=1
    end
   result
  end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
#def directors_totals(nds)
  #result = {}
  #nil
#end
