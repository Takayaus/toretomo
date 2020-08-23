
AdminUser.create!(email: 'admin@example.com', password: 'adminuser', password_confirmation: 'adminuser')

Category.create!(name: 'スポーツジム')
Category.create!(name: 'ヨガ')
Category.create!(name: 'スイミング')
Category.create!(name: 'ゴルフ')
Category.create!(name: '格闘技')
Category.create!(name: 'テニス')
Category.create!(name: 'クライミング')
Category.create!(name: 'フットサル')
Category.create!(name: 'ダンス')

content = 'この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ'
number = '06-0000-0000'

Gym.create!(name: 'ダイドーインドアテニスクラブ', title: 'キッズからシニアの方まで！楽しみながら上達できるスクール。', content: content, number: number, address: '大阪府大阪市福島区海老江５丁目１', price: 5000, district_id: 3, image: open("./db/gyms/icon0.jpg"))
Gym.create!(name: 'コナミスポーツクラブ新大阪', title: 'ピカピカの設備で体を動かしませんか？', content: content, number: number, address: '大阪府大阪市北区錦町１丁目', price: 7600, district_id: 1, image: open("./db/gyms/icon1.jpg"))
Gym.create!(name: 'ゴールドジム大阪中之島', title: '運動を習慣化しよう！ただいま入会金無料キャンペーン！！', content: content, number: number, address: '大阪府大阪市城東区新喜多１丁目２', price: 4900, district_id: 17, image: open("./db/gyms/icon2.jpg"))
Gym.create!(name: 'Feliz(フェリーズ)パーソナルトレーニング・ダイエットジム梅田店', title: 'ただいまパーソナルトレーニング無料キャンペーン実施中', content: content, number: number, address: '大阪府大阪市中央区大阪城１−１', price: 9800, district_id: 5, image: open("./db/gyms/icon3.jpg"))
Gym.create!(name: 'ブリヂストンスイミングスクール 旭', title: '大人から子供まで！コロナに負けない健康を手に入れよう！', content: content, number: number, address: '大阪府大阪市旭区中宮４丁目７', price: 5500, district_id: 16, image:  open("./db/gyms/icon4.jpg"))
Gym.create!(name: 'フットサル プラスカステロ', title: '初心者大歓迎！', content: content, number: number, address: '大阪府大阪市都島区中野町５丁目１', price: 5600, district_id: 2, image: open("./db/gyms/icon5.jpg"))
Gym.create!(name: 'Juke.Golf.Club', title: '団体割りあります！', content: content, number: number, address: '大阪府大阪市鶴見区横堤２丁目５', price: 4300, district_id: 18, image: open("./db/gyms/icon6.jpg"))
Gym.create!(name: '総合スポーツクラブ ニッコースポーツ', title: '理想のカラダを手に入れよう！', content: content, number: number, address: '大阪府大阪市生野区鶴橋2丁目１', price: 7400, district_id: 15, image: open("./db/gyms/icon7.jpg"))
Gym.create!(name: 'Real-ize（リアル アイズ）', title: '女性が多いジムです！', content: content, number: number, address: '大阪府大阪市此花区桜島２丁目１', price: 3900, district_id: 4, image: open("./db/gyms/icon8.jpg"))
Gym.create!(name: 'ボディビルジム ソティックジム', title: '運動を習慣化しよう！ただいま入会金無料キャンペーン！！', content: content, number: number, address: '大阪府大阪市港区池島２丁目５', price: 6600, district_id: 7, image: open("./db/gyms/icon9.jpg"))
Gym.create!(name: 'FiT24(フィット24) 城東古市店', title: '2020年2月オープン！24時間ジム！', content: content, number: number, address: '大阪府大阪市大正区三軒家東４丁目３', price: 5700, district_id: 8, image: open("./db/gyms/icon10.jpg"))
Gym.create!(name: 'キックボクシング専門パーソナルトレーニングジムSTYLE 天満橋店', title: '大人から子供まで！コロナに負けない健康を手に入れよう！', content: content, number: number, address: '大阪府大阪市西成区橘１丁目８', price: 3400, district_id: 24, image: open("./db/gyms/icon11.jpg"))
Gym.create!(name: '美・BODY・ヨガ Venus（ヴィーナス）', title: 'ヨガ・ピラティスレッスン中心のジムです！', content: content, number: number, address: '大阪府大阪市淀川区十三本町１丁目１１', price: 7800, district_id: 12, image: open("./db/gyms/icon12.jpg"))
Gym.create!(name: '総合格闘技スタジオSTYLE', title: 'RIZIN目指そう！', content: content, number: number, address: '大阪府大阪市都島区内代町１丁目８', price: 4300, district_id: 2, image: open("./db/gyms/icon13.jpg"))
Gym.create!(name: 'パーソナル専門ジム・アクア', title: '充実の施設と豊富なプログラムが揃ったスポーツクラブです。', content: content, number: number, address: '大阪府大阪市東成区大今里１丁目３５', price: 6500, district_id: 14, image: open("./db/gyms/icon14.jpg"))
Gym.create!(name: 'クライミングクラブ大阪', title: '初心者大歓迎！団体割りあります！', content: content, number: number, address: '大阪府大阪市中央区谷町６丁目９', price: 8700, district_id: 5, image: open("./db/gyms/icon15.jpg"))
Gym.create!(name: 'DanCe LeveL', title: '一緒に踊りましょう！', content: content, number: number, address: '大阪府大阪市城東区新喜多１丁目１', price: 7600, district_id: 17, image: open("./db/gyms/icon16.jpg"))
Gym.create!(name: 'パーソナルジム -Above-', title: '初月無料！パーソナルトレーナーと共に理想のカラダを目指そう！', content: content, number: number, address: '大阪府大阪市旭区中宮４丁目４', price: 7100, district_id: 16, image: open("./db/gyms/icon17.jpg"))
Gym.create!(name: '空手道 T&R', title: 'キックボクシングで脂肪を燃やそう！', content: content, number: number, address: '大阪府大阪市福島区海老江５丁目２', price: 8900, district_id: 3, image: open("./db/gyms/icon18.jpg"))
Gym.create!(name: 'テニスクラブ NEXTDOOR 梅田店', title: 'テニスを始めてみよう！', content: content, number: number, address: '大阪府大阪市北区錦町１丁目', price: 5400, district_id: 1, image: open("./db/gyms/icon19.jpg"))


20.times do |n|
  name = Faker::Name.name
  age = rand(20..45)
  number = "06-0000-0000"
  email = Faker::Internet.email
  sex = rand(0..1)
  array = [4000, 5000, 6000, 7000, 8000]
  price = array.sample
Trainer.create!(name: name, 
                        age: age,
                        number: number,
                        email: email,
                        sex: sex,
                        title: "",
                        content: "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ",
                        price: price,
                        image: open("./db/trainers/icon#{n}.jpg")
)
end