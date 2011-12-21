class AddRenderedShowNotesToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :rendered_show_notes, :text
  end
end
