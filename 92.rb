p (3..6) === 7
p (1..7) === 7

car_age = gets.to_f
case car_age
when 0..1
  puts "Mmm.. new car smell"
when 1..3
  puts "Nice and new"
when 3..10
  puts "Reliable but slightly dinged"
when 10..30
  puts "clunker"
else
  puts "Vintage gem"
end
