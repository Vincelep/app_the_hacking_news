class Commentaire < ApplicationRecord
	belongs_to :user
  belongs_to :post
  has_many :undercommentaires
end
