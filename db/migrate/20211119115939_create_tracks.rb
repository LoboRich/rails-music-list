class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks, id: :uuid do |t|
      t.string :url
      t.string :name
      t.jsonb :credits
      t.boolean :available

      t.timestamps
    end
  end
end
