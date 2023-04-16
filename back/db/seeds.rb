# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
    email: "0831yuuki@i.softbank.jp",
    password:              "111111",
    password_confirmation: "111111",
    )

6.times do |n|
  name  = Faker::Name.name
  email = "083#{n+2}yuuki@i.softbank.jp"
  password = "111111"
  User.create!(name:  name,
        email: email,
        password:              password,
        password_confirmation: password,
        )
end

# マイクロポスト
image_hamburger = Rails.root.join('public', 'uploads', 'post', 'image', '1', 'food-image.jpg')
image_fish = Rails.root.join('public', 'uploads', 'post', 'image', '1', '鯵の干物.jpeg')
image_salad = Rails.root.join('public', 'uploads', 'post', 'image', '2', 'サラダ.webp')
file1 = File.open(image_hamburger)
file2 = File.open(image_fish)
file3 = File.open(image_salad)
users = User.order(:created_at).take(5)
10.times do
  title = "絶品！お肉屋さんのハンバーガーパテ☆"
  content = "専門店のハンバーグスパイスの種類を調べ、ハンバーガーパテ用に独自にミックスしたら、絶品のジューシーパテになりました！"
  time = 3
  cost = 10000
  process = "溶き卵に生パン粉を入れて混ぜ、ふやかしておきます。冷蔵庫から出したばかりの冷たい牛ひき肉に①の卵パン粉と全てのスパイスと調味料を入れて粘りが出るまで混ぜます。
             肉の食感を重視の人は粘りがでたらすぐ手を止めます。ふんわりジューシーが好みの人はよく混ぜましょう。（でも混ぜすぎに注意！"
  coment = "お肉屋さんで粗めに挽いてもらうと美味しさUP！　混ぜ過ぎ、焼き過ぎに注意。
            焼いている時にフライ返し等で上からギューギュー押さえつけて焼かないこと！ジューシーさとうまみが流れ出しちゃうので。パン粉は必ず生パン粉を使ってください☆"
  users.each { |user| user.posts.create!(title: title, image: file1, content: content, time: time, cost: cost, process: process, coment: coment) }
end
10.times do
  title = "めちゃくちゃ美味しい鯵の干物☆"
  content = "専門店のハンバーグスパイスの種類を調べ、ハンバーガーパテ用に独自にミックスしたら、絶品のジューシーパテになりました！"
  time = 3
  cost = 3000
  process = "溶き卵に生パン粉を入れて混ぜ、ふやかしておきます。冷蔵庫から出したばかりの冷たい牛ひき肉に①の卵パン粉と全てのスパイスと調味料を入れて粘りが出るまで混ぜます。
             肉の食感を重視の人は粘りがでたらすぐ手を止めます。ふんわりジューシーが好みの人はよく混ぜましょう。（でも混ぜすぎに注意！"
  coment = "お肉屋さんで粗めに挽いてもらうと美味しさUP！　混ぜ過ぎ、焼き過ぎに注意。
            焼いている時にフライ返し等で上からギューギュー押さえつけて焼かないこと！ジューシーさとうまみが流れ出しちゃうので。パン粉は必ず生パン粉を使ってください☆"
  users.each { |user| user.posts.create!(title: title, image: file2, content: content, time: time, cost: cost, process: process, coment: coment) }
end
10.times do
  title = "新鮮で美味しいサラダ☆"
  content = "専門店のハンバーグスパイスの種類を調べ、ハンバーガーパテ用に独自にミックスしたら、絶品のジューシーパテになりました！"
  time = 3
  cost = 7000
  process = "溶き卵に生パン粉を入れて混ぜ、ふやかしておきます。冷蔵庫から出したばかりの冷たい牛ひき肉に①の卵パン粉と全てのスパイスと調味料を入れて粘りが出るまで混ぜます。
             肉の食感を重視の人は粘りがでたらすぐ手を止めます。ふんわりジューシーが好みの人はよく混ぜましょう。（でも混ぜすぎに注意！"
  coment = "お肉屋さんで粗めに挽いてもらうと美味しさUP！　混ぜ過ぎ、焼き過ぎに注意。
            焼いている時にフライ返し等で上からギューギュー押さえつけて焼かないこと！ジューシーさとうまみが流れ出しちゃうので。パン粉は必ず生パン粉を使ってください☆"
  users.each { |user| user.posts.create!(title: title, image: file3, content: content, time: time, cost: cost, process: process, coment: coment) }
end
150.times do |c|
 6.times do |n|
    Heart.create!(user_id:  n+1, post_id: c+1)
 end
end
