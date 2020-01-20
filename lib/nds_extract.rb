$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def gross_for_director(directorData)
  
  sum = 0
  
  for film in directorData[:movies] do
    
    sum += film[:worldwide_gross]
      
  end
  
  sum

end

def directors_totals(nds)
  
  output = {}
  
  for element in nds do
    
    directorName = element[:name]
    output[directorName] = gross_for_director(element)
  
  end
  
  output
  
end