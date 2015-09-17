class Foobar
  # Q4 CODE HERE
  def self.baz (arr)
    sum = 0
    b = Array.new
    for elm in arr
      elm_i =  elm.to_i + 2

      if elm_i % 2 == 0 && elm_i <= 10 && !b.include?(elm_i)
        b.push elm_i

        sum += elm_i

      end

    end

    return sum
  end

end

print Foobar.baz(["3", "5", "-2", "-7", "1", "6"])
