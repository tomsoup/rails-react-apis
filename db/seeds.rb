10.times do |idea|
  Idea.create!(
  title: "idea #{idea}",
  body: "The body content of this idea is #{idea}"
  )
end

puts "10 ideas created"
