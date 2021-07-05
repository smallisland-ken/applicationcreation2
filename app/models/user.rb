class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :post_images, dependent: :destroy
  #1:Nの関係はNが複数あるのでpost_imagesで複数形を取る

end


