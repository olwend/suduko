require './lib/square'

class Validarray

  attr_reader :validarray

  def initialize(array)
    @validarray = transform_array(array)
  end

  def transform_array(array)
    target = []
    array.each { |x| target << x unless target.include?(x) }
    target.map { |sq| Square.new(sq)}
  end

#  create valid method
  def valid?
    # if array of 9 integers
      validarray.size == 9 &&
      validarray.all? { |sq| sq.valid? }
      #poss check that all array objs square
  end

  # duplicates
end
