class AddHeadingToRule < ActiveRecord::Migration
  def change
    add_column :rules, :heading, :text
  end
end
