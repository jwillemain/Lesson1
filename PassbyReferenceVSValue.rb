#Create a method that takes an array as a parameter. 
#Within that method, try calling methods that do not mutate the caller. 
#How does that affect the array outside of the method? 

arr = [1, 2, 2, 3, 4, 4, 4, 5]

def downsize(array)
  array.uniq
end

p downsize(arr) #we were able to modify the array initialized in the outer scope
p arr           #just verifying that the method does not mutate the caller

#What about when you call a method that mutates the caller within the method?

arr = [1, 2, 2, 3, 4, 4, 4, 5]

def removal(array)
  array.pop
end

p removal(arr)
p array          #permanently modified the array