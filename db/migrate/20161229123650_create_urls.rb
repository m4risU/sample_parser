class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :uri
      t.string :title
      t.decimal :price
      t.string :walmart_id

      t.timestamps
    end
  end
end
