class Article < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :likes, dependent: :destroy

  attachment :article_image1
  attachment :article_image2
  attachment :article_image3
  attachment :article_image4

  validates :title, presence: true
  validates :situation, presence: true
  validates :description1, presence: true

  # 『いいね』機能のインスタンスメソッド
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # 検索機能のインスタンスメソッド
  def self.search(keyword)
    where(["title like? OR situation like?", "%#{keyword}%", "%#{keyword}%"])
  end

  # ソート機能のインスタンスメソッド
  def self.sort(keyword)
    if keyword == "new"
      Article.all.order(created_at: :DESC).page().per(3).reverse_order
    elsif keyword == "old"
      Article.all.order(created_at: :ASC).page().per(3).reverse_order
    elsif keyword == "likes"
      Article.find(Favorite.group(:article_id).order(Arel.sql('count(article_id) desc')).reverse_order.pluck(:article_id))
    elsif keyword == "dislikes"
      Article.find(Favorite.group(:article_id).order(Arel.sql('count(article_id) asc')).reverse_order.pluck(:article_id))
    end
  end
end
