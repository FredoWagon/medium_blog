class CreateUpvotes < ActiveRecord::Migration[6.1]
  def change
    create_table :upvotes do |t|
      t.references :user, foreign_key: true
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
