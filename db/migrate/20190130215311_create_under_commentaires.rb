class CreateUnderCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :under_commentaires do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :commentaire, index: true
      t.timestamps
    end
  end
end
