class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :uri
      t.string :name
      t.decimal :price
      t.string :walmart_id

      t.timestamps
    end
  end
end
