class Follow < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.string :followee_id
      t.string :follower_id
      t.string :relation, default: 'friend'
      t.timestamps
    end
  end
end
