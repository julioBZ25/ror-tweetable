puts("Seeding the DB")

Comment.destroy_all
Tweet.destroy_all
User.destroy_all

puts("Seeding Users")
u1 = User.create(name: "The Great Tanus", username: "tanus", email: "tanus@gmail.com", password: "qwerty", password_confirmation: "qwerty")
u1.avatar.attach(io: File.open("db/avatars/tanus.png"), filename: "tanus.png")

u2 = User.create(name: "Son Goku", username: "goku2020", email: "goku@gmail.com", password: "222222", password_confirmation: "222222")
u2.avatar.attach(io: File.open("db/avatars/goku.png"), filename: "goku.png")

u3 = User.create(name: "Diego Torres", username: "diego", email: "diego@gmail.com", password: "333333", password_confirmation: "333333")
u3.avatar.attach(io: File.open("db/avatars/diego.png"), filename: "diego.png")

u4 = User.create(name: "House on Fire", username: "dogfire", email: "dog@gmail.com", password: "444444", password_confirmation: "444444")
u4.avatar.attach(io: File.open("db/avatars/dog.png"), filename: "dog.png")

# u5 = User.create(name: "The Real Neil", username: "drRealNeil", email: "real@gmail.com", password: "5555555", password_confirmation: "555555")
# u5.avatar.attach(io: File.open("db/avatars/neil.png"), filename: "neil.png")

puts("Seeding Tweets")
t1 = Tweet.create(body: "This universe is finite, its resources, finite… if life is left unchecked, life will cease to exist.", user: u1)
t2 = Tweet.create(body: "Even a low class warrior can surpass an elite. With enough hard work.", user: u2)
t3 = Tweet.create(body: "Everyone share some kind of ‘quote’, should I as well?", user: u3)
t4 = Tweet.create(body: "This is fine, everything is fine.", user: u4)
# t5 = Tweet.create(body: "For me, I am driven by two main philosophies: know more today about the world than I knew yesterday and lessen the suffering of others.", user: u5)
