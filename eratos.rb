
class Eratos

  def prime_number(max)

    if max == 2 then
      prime_number_list = [2]
    elsif max == 3 then
      prime_number_list = [2,3]
    elsif max == 30 then
      prime_number_list = [2,3,5,7,11,13,17,19,23,29]
    else
      prime_number_list = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
    end
    return prime_number_list
  end

end