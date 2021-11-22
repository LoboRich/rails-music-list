class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums, id: :uuid do |t|
      t.string :name
      t.boolean :released
      t.datetime :released_at
      t.string :cover_art_url
      t.string :kind
      t.integer :length

      t.timestamps
    end
  end
end
