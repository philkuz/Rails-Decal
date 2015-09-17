def squared_sum(a, b)
  # Q1 CODE HERE
  (a+b)**2
end

def sort_array_plus_one(a)
  # Q2 CODE HERE
  a = a.sort; b = Array.new
  a.each {|c|b.push(c+1)}
  return b
end

def combine_name(first_name, last_name)
  first_name+" "+last_name
end

def blockin_time(a)
  # DO NOT EDIT THIS CODE BELOW
  require './foobar'
  Foobar.baz a
end
