$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
   
    #   correctly totals the worldwide earnings for a director 
    
    total = 0
    i = 0
    movies = director_data[:movies]
    while i < movies.length do
       
      total += movies[i][:worldwide_gross]
      i += 1
    end
    total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  # result["Stephen Spielberg"] = 1357566430 << total
  i = 0
  while i < nds.length do
    # binding.pry
     result[nds[i][:name]] = gross_for_director(nds[i])
  i += 1
  end
  nil
  result
end
