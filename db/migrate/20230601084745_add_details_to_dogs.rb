class AddDetailsToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :details, :text
  end
end
