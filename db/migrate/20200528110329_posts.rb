class Posts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.text :message
      t.integer :creator_id

      t.timestamps
    end
  end
end
