class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :region
      t.file_field :song_file

      t.timestamps
    end
  end
end
