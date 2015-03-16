if User.count == 0
	puts "Build users"
	User.create!(email: "kimes.rivas1@gmail.com", password: "welcome123", password_confirmation: "welcome123")
	User.create!(email: "startpablo@gmail.com", password: "welcome123", password_confirmation: "welcome123")
end