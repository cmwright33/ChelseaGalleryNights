class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :reception_info
      t.string :photo
      t.string :artists, array: true
      t.boolean :alcohol
      t.belongs_to :gallery
    end
  end
end
