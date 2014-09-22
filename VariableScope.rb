# Create a local variable and modify it at an inner scope. You can try

# re-assigning the variable to something else

a = 5        # initialized in the outer scope

3.times do |n|
  a = 3      # modifying in the inner scope (3 times)
end

puts a       # a has been modified

# call a method that doesn’t mutate the caller

a = 5

def random_method
  a = 3      # trying to modify a in the inner scop
end

puts a       # output is still 5, methods create their own scope ouside of the execution flow

# call a method that mutates the caller.

a = [5, 6, 7, 8]

def mutate_the_caller(array)
  array.pop
end

p "Before mutate the caller method: #{a}"
mutate_the_caller(a)
p "After the mutate the caller method: #{a}" # even though a is outside the method's scope, we permanently modified the caller

# Create a local variable at an inner scope and try to reference it in the outer scope. What happens when you have nested do/end blocks?

a = 5       

3.times do |n|
  a = 3  
  b = 10      # initialized in the inner scope   
end

puts a       
puts b        # cannot reference b, we get an error because outer scope cannot reference the inner scope