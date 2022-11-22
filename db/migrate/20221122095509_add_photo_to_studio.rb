class AddPhotoToStudio < ActiveRecord::Migration[7.0]
  def change
    add_column :studios, :photo, :string
  end
end
