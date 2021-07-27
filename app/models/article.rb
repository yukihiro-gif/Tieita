class Article < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :likes, dependent: :destroy

  #『いいね』機能のインスタンスメソッド
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  #検索機能のインスタンスメソッド
  def self.search(keyword)
    where(["title like? OR situation like?", "%#{keyword}%", "%#{keyword}%"])
  end

  #ソート機能のインスタンスメソッド
  def self.sort(keyword)
    if keyword == "new"
       Article.all.order(created_at: :DESC)
    elsif keyword == "old"
       Article.all.order(created_at: :ASC)
    elsif keyword == "likes"
       find(Favorite.group(:user_id).order(Arel.sql('count(user_id) desc')).pluck(:user_id))
    elsif keyword == "dislikes"
       Article.find(Favorite.group(:article_id).order(Arel.sql('count(article_id) asc')).pluck(:article_id))
    end
  end

end
