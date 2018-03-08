require './lib/square'

class Column

  attr_reader :array

  def initialize(array)
    @array = transform_array(array)
  end

  def transform_array(array)
    target = []
    array.each { |x| target << x unless target.include?(x) }
    target.map { |x| Square.new(x)}
  end

#  create valid method
  def valid?
    # if array of 9 integers
      array.uniq.size == 9 &&
      array.all? { |x| x.valid? }
      #poss check that all array objs square
  end

  # duplicates
end
