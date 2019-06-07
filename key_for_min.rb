# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# name_hash = {:blake => 500, :ashley => 2, :adam => 1}

def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_key = nil
  
  name_hash.each do |key, value|
    if lowest_value == 0 || value < lowest_value
      lowest_value = value 
      lowest_key = key
    end
  end
  lowest_key
end

#if the lowest_value is in it's intial state  
#or if the value of the current key is less than the lowest_value
#then: set the lowest_value to value and lowest_key to key

the point is you just set a FIRST value that gets cleared on the FIRST iteration because 
this conditional works no matter what on the FIRST TRY ONLY

because it gets REASSIGNED after the first run

ok that makees sense now, i had no idea that it was only for the first try only

yea you set it to something so it runs and sets the correct value, then it can keep running
and see if any value is smaller than that value

the idea is that you're looking for the lowest value right? so:

- assign ANY value in the hash to lowest_value on the first try
- keep comparing that value to other values. if anything is smaller, it will take lowest_value's place

so if its 500, 252, 321, 4, and 3

if you do lowest_value = 321
  
  its not zero anymore so this doesnt get triggered
  
  and 252, 4, and 3 would get triggered and get assigned again
  
  lets say 252 gets assigned next
  then 3 would be iterated, and assigned as the lowest
  then 4 would be iterated, and nothing would happen because 3 < 4
  
  do you understand yep i 100% get iut now why not 120% kill oyurself hup
  
  my dad used to tell me "why not 100" when i got 97 on exams srs wowhahaha
  did you legit just jajaja stop. Ali rubbing off on me chrispictopher. she calls me "Chreestopher" HAHAHAHAHAHAHA srs? just to annoy me lol ok good
  
  they do the accent so well on south park ok  im gonna work
  
  anything else houndy
   
   thats it <3 danku let me know if anything else comes up and ill help