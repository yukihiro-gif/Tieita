class Article < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :likes, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(keyword)
    where(["title like? OR situation like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
