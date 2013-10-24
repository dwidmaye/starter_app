class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :goal
      t.string :stakeholder
      t.string :behavior
      t.integer :business_value
      t.integer :complexity_value
      t.string :tag
      t.string :assignee

      t.timestamps
    end
    add_index :stories, :business_value
  end
end
