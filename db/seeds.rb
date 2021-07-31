# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create!(
  [{email: 'bsyu00000@gmail.com',
  password: '000000',
  name_sei: '佐藤',
  name_mei: '太郎',
  name_kana_sei: 'サトウ',
  name_kana_mei: 'タロウ',
  tel: '09012345678',
  profile_name: 'タッチ',
  profile_image: File.open('./app/assets/images/5048383_m.jpg'),
  introduction: '前職は飲食店で働いていました。よろしくお願いします！',
  age: '27',
  job: 'サラリーマン',
  from: '東京',
  hobby: 'ランニング',
  like: 'サッカー観戦',
  dislike: '虫',},

  {email: 'bsyu11111@gmail.com',
  password: '111111',
  name_sei: '高橋',
  name_mei: '花子',
  name_kana_sei: 'たかはし',
  name_kana_mei: 'ハナコ',
  tel: '09012345678',
  profile_name: 'ハナ',
  profile_image: File.open('./app/assets/images/5048383_m.jpg'),
  introduction: 'スポーツと映画鑑賞が趣味です。',
  age: '20',
  job: '花屋',
  from: '千葉',
  hobby: '映画鑑賞',
  like: 'ランニング',
  dislike: '虫',  },

  {email: 'bsyu22222@gmail.com',
  password: '222222',
  name_sei: '田中',
  name_mei: '悠一',
  name_kana_sei: 'タナカ',
  name_kana_mei: 'ユウイチ',
  tel: '22222222222',
  profile_name: 'ゆーいち',
  introduction: 'サーフィンとバスケットが趣味です。よろしくお願いします',
  age: '32',
  job: 'ラーメン屋店主',
  from: '千葉',
  hobby: 'サーフィン',
  like: '野球観戦',
  dislike: '雷',},

  {email: 'bsyu33333@gmail.com',
  password: '333333',
  name_sei: '山田',
  name_mei: '哲人',
  name_kana_sei: 'ヤマダ',
  name_kana_mei: 'テツト',
  tel: '33333333333',
  profile_name: 'テツ',
  introduction: '旅行が趣味です。家事の裏技が知りたいです',
  age: '22',
  job: 'サラリーマン',
  from: '東京',
  hobby: 'ランニング',
  like: 'サッカー観戦',
  dislike: '虫',},

  {email: 'bsyu44444@gmail.com',
  password: '444444',
  name_sei: '坂本',
  name_mei: '正人',
  name_kana_sei: 'サカモト',
  name_kana_mei: 'マサト',
  tel: '44444444444',
  profile_name: 'まっちゃん',
  introduction: 'まる',
  age: '32',
  job: 'サラリーマン',
  from: '東京（渋谷）',
  hobby: '草野球',
  like: 'ビールを飲むこと',
  dislike: '虫',},]
)

 User.all.each do |user|
 rand(0..5).times do |n|
    Article.create!([{
    user_id: user.id,
    title: 'ユーザ#{user.id}の記事NO.#{n}',
    situation: '場面#{n}で使います',
    article_image1: File.open('./app/assets/images/5048383_m.jpg'),
    description1: 'まずは〇〇を〇〇します。',
    description2: '次に〇〇を〇〇します。',
    description3: 'さらには〇〇を〇〇します。',
    description4: '最後に〇〇を〇〇して完成！',},]
    )
  end
end

Article.all.each do |article|
 User.all.each do |user|
  rand(0..5).times do |n|
    Favorite.create!(
      article_id: article.id,
      user_id: user.id,
    )
  end
 end
end

Article.all.each do |article|
 User.all.each do |user|
  rand(0..5).times do |n|
    Like.create!(
      article_id: article.id,
      user_id: user.id,
    )
  end
 end
end

Article.all.each do |article|
 User.all.each do |user|
  rand(0..5).times do |n|
    PostComment.create!(
      article_id: article.id,
      user_id: user.id,
      comment: "ユーザ#{user.id}のコメント",
    )
  end
 end
end

