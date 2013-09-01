class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :website
      t.string :phone
      t.string :email
      t.string :hours
      t.string :photo
    end
  end
end
