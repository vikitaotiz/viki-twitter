class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :content
    
      t.timestamps
    end

    add_index :posts, :user_id
  end
end
