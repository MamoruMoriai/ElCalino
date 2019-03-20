names = ["A", "C", "D", "F", "G", "H", "I", "J", "K"]

maxs = [6, 6, 4, 4, 6, 4, 4, 6, 10]

0.upto(8) do |cnt|
  Seat.create!(
    name: names[cnt],
    max: maxs[cnt]
  )
end  
