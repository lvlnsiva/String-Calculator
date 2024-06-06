module StringCalculator
  def add
  	return 0 if empty?
  	digits.reduce {|sum, d| sum + d}
  end

  def digits
  	split(",").map { |d| d.to_i }
  end
end