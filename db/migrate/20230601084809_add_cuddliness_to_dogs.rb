class AddCuddlinessToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :cuddliness, :integer
  end
end
