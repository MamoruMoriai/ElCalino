seat_ids = [1, 2, 5, 4, 7]

dates = [Time.parse("2019/1/1 18"), Time.parse("2019/2/1 18"), Time.parse("2019/2/1 18"), Time.parse("2019/2/1 19"), Time.parse("2019/2/15 21")]

visitors = [2, 2, 3, 3, 1]

0.upto(4) do |cnt|
  Sale.create!(
    seat_id: seat_ids[cnt],
    date: dates[cnt],
    visitor: visitors[cnt]
  )
end
