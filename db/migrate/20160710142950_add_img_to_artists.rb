class AddImgToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :img, :string
  end
end
