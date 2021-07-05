class PostImage < ApplicationRecord

  belongs_to :user
  # 一つの画像投稿に対してユーザーは一人なので単数形のuserとなる。

end
