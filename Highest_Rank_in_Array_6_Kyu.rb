def highest_rank(arr)
  rank = Hash.new
  tie_breaker = []
  arr.each do |number|
    if rank.key?(number)
      rank[number] += 1
    else
      rank[number] = 1
    end
  end
  puts rank
  rank.each do |number, value|
    if value == rank.values.max
      tie_breaker.push(number)
    end
  end
  puts tie_breaker.max
end

highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])
