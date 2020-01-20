$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_index = 0
  gross = 0
  while movies_index < directors_database[director_data][:movies].length do
    gross += directors_database[director_data][:movies][movies_index]
    movies_index++
  end
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  directors_index = 0
  while directors_index < directors_database.length do
    movies_index = 0
    result[directors_database[directors_index][:name]] = 0
    # do the math in here
      # director_data = directors_index
    result[directors_database[directors_index][:name]] += gross_for_director(directors_index)
    directors_index += 1
  end
  return result
end
