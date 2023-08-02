class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.text :body
      t.references :post, null: false, foreign_key: true
      t.references :parent_reply, foreign_key: {to_table: :replies}

      t.timestamps
    end
  end
end
