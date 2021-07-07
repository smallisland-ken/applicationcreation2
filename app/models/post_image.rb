class PostImage < ApplicationRecord

  belongs_to :user
  # 一つの画像投稿に対してユーザーは一人なので単数形のuserとなる。
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
