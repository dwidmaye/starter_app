class AddStatusToStories < ActiveRecord::Migration
  def change
    add_column :stories, :status, :string, default: 'ice box', null: false
  end
end
