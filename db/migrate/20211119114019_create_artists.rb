class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists, id: :uuid do |t|
      t.string :name
      t.string :permalink
      t.text :bio
      t.datetime :formed_at
      t.boolean :verified
      t.datetime :verified_at
      t.string :avatar_url
      t.string :cover_photo_url

      t.timestamps
    end
  end
end
