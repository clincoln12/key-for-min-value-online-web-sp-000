# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# name_hash = {:blake => 500, :ashley => 2, :adam => 1}

def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_key = nil
  
  name_hash.each do |key,value|
    if lowest_value == 0 || value < lowest_value
      lowest_value = value 
      lowest_key = key
    end
  end
  lowest_key
end