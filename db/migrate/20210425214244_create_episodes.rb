class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :members
      t.date :published_at
      t.string :thumbnail
      t.string :description

      t.timestamps
    end
  end
end
