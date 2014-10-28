class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :like ,:default=>'like'
      t.integer :user_id
      t.integer :rule_id
      t.string :who_like

      t.timestamps
    end
  end
end
