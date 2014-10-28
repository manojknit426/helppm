class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :rule_id
      t.string :likes ,:default=>'like'
     t.string :who_like 
     t.string :who_comment
      t.timestamps
    end
  end
end
