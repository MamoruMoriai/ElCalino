sale_ids = [1, 1, 1, 2, 2, 3, 3, 4, 4, 4, 5]

menu_ids = [3, 1, 22, 4, 10, 1, 15, 16, 20, 33, 34]

numbers = [1, 1, 2, 2, 2, 3, 3, 1, 1, 1, 1, 4]

0.upto(10) do |cnt|
  Take.create!(
    sale_id: sale_ids[cnt],
    menu_id: menu_ids[cnt],
    number: numbers[cnt]
  )
end
