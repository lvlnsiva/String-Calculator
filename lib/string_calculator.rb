module StringCalculator
  def add
  	return 0 if empty?
  	raise_if_negitives
  	digits.reduce {|sum, d| sum + d}
  end

  def raise_if_negitives
  	negatives = digits.select { |x| x < 0 }
  	raise if negatives.any?
  end

  def digits
  	gsub("\n", ",").split(",").map { |d| d.to_i }
  end
end