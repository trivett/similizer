class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.integer :echo_id
      t.text :biography
      t.string :name
      t.text :gif_url
      t.text :img_url
      t.string :genre

      t.timestamps
    end
  end
end
