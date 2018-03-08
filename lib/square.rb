class Square

  attr_reader :n

  def initialize(n)
    @n = n
  end

  def valid?
    n.is_a?(Integer) && n > 0 && n < 10
  end
end
