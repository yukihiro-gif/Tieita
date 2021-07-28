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
  password: '22222',
  name_sei: '田中',
  name_mei: '悠一',
  name_kana_sei: 'タナカ',
  name_kana_mei: 'ユウイチ',
  tel: '33333333333',
  profile_name: 'ゆーいち',
  profile_image: File.open('./app/assets/images/5048383_m.jpg'),
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
  profile_image: File.open('./app/assets/images/5048383_m.jpg'),
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
  profile_image: File.open('./app/assets/images/5048383_m.jpg'),
  introduction: 'まる',
  age: '32',
  job: 'サラリーマン',
  from: '東京（渋谷）',
  hobby: '草野球',
  like: 'ビールを飲むこと',
  dislike: '虫',},]
)

Article.create!(
  [{user_id: '1',
  title: '美味しいカレーの作り方',
  situation: 'お家でカレーを作る時に役立ちます',
  article_image1: File.open('./app/assets/images/5048383_m.jpg'),
  description1: '野菜を洗う',
  article_image2: File.open('./app/assets/images/5048383_m.jpg'),
  description2: '肉にしっかり焼き色をつける',
  article_image3: File.open('./app/assets/images/5048383_m.jpg'),
  description3: 'サフランライスを炊く',
  article_image4: File.open('./app/assets/images/5048383_m.jpg'),
  description4: 'おしゃれに盛り付けて完成！'},

  {user_id: '2',
  title: 'お風呂でカビを取る裏技',
  situation: 'お風呂に入る前に',
  article_image1: File.open('./app/assets/images/5048383_m.jpg'),
  description1: '浴槽を濡らす',
  article_image2: File.open('./app/assets/images/5048383_m.jpg'),
  description2: 'たわしで擦る',
  article_image3: File.open('./app/assets/images/5048383_m.jpg'),
  description3: 'マジックリンをかける',
  article_image4: File.open('./app/assets/images/5048383_m.jpg'),
  description4: '水で流して終わり！'},
  
  {user_id: '2',
  title: 'お風呂でカビを取る裏技',
  situation: 'お風呂に入る前に',
  article_image1: File.open('./app/assets/images/5048383_m.jpg'),
  description1: '浴槽を濡らす',
  article_image2: File.open('./app/assets/images/5048383_m.jpg'),
  description2: 'たわしで擦る',
  article_image3: File.open('./app/assets/images/5048383_m.jpg'),
  description3: 'マジックリンをかける',
  article_image4: File.open('./app/assets/images/5048383_m.jpg'),
  description4: '水で流して終わり！'},
  
  {user_id: '2',
  title: 'お風呂でカビを取る裏技',
  situation: 'お風呂に入る前に',
  article_image1: File.open('./app/assets/images/5048383_m.jpg'),
  description1: '浴槽を濡らす',
  article_image2: File.open('./app/assets/images/5048383_m.jpg'),
  description2: 'たわしで擦る',
  article_image3: File.open('./app/assets/images/5048383_m.jpg'),
  description3: 'マジックリンをかける',
  article_image4: File.open('./app/assets/images/5048383_m.jpg'),
  description4: '水で流して終わり！'},]
)
PostComment.create!(
  [{user_id: '2',
  article_id: '1',
  comment: 'とても美味しそうですね。母のマル秘レシピも載せておいたので、ぜひ作ってみください。</br>
  ~〇〇家のマル秘カレーレシピ~</br>
  ①肉を炒める</br>
  ②野菜を煮込む</br>
  ③お皿に盛り付ける</br>'},

  {user_id: '1',
  article_id: '2',
  comment: 'すごく綺麗になりそうですね！'},]
)
