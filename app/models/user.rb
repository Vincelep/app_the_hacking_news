class User < ApplicationRecord
	has_many :posts
  has_many :commentaires
  has_many :undercommentaires
end
