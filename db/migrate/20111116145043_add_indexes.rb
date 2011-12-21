class AddIndexes < ActiveRecord::Migration
  def up
    add_index :episodes, :old_url
    add_index :episodes, :number
  end

  def down
  end
end
