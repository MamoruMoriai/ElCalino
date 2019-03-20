names = ["飲み放題", "宴会"]

prices = [2000, 4000]

0.upto(1) do |cnt|
  Course.create!(
    name: names[cnt],
    price: prices[cnt],
    image: "No Image."
  )
end
