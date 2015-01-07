# Write a function that takes an array of numbers a, and returns an array with the
# elements of a in reversed order. Use only Array#length and array indices for
# array access. (In other words, no Array#reverse, Array#<<, Array#pop, etc!)
#

class Reverser
  attr_accessor :reverse
  def initialize(a)
    @reverse = reverse_it(a)
  end

  def reverse_it(a)
    len = a.length()
    a2 = []
    len.times do |i|
      a2[i] = a[(len-1)-i]
    end
    return a2
  end
end
