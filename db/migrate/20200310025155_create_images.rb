class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image, nill: false
      t.references :post, foreign_key: true
      t.timestamps
    end
  end
end
