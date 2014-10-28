class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.text :law

      t.timestamps
    end
  end
end
