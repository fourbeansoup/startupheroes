class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :guest
      t.string :company
      t.text :show_notes
      t.text :intro
      t.integer :number

      t.timestamps
    end
  end
end
