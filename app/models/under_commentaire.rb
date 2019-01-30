class UnderCommentaire < ApplicationRecord
	belongs_to :user
  belongs_to :commentaire
end
