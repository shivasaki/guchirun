class CreateGuchis < ActiveRecord::Migration[5.0]
  def change
    create_table :guchis do |t|
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
